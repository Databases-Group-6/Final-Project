const mysql = require('mysql2/promise');
const express = require('express');
const bodyParser = require('body-parser')

// create the connection to database



const app = express();
app.use(bodyParser.json())
app.use(bodyParser.urlencoded({extended: true}))

app.listen(8080, () => console.log("server listening"));

app.get("/ratings", async function ratings(req, res) {
  const connection = await mysql.createConnection({
    host: 'localhost',
    user: 'root',
    password: 'password',
    database: 'Campus_Eats_Fall2020'
  }).catch(console.log);
  const [result, fields] = await connection.query(
    `select o.order_id, person_name as driver, restaurant_name as restaurant, dr.rating as driver_rating, rr.rating as restaurant_rating 
    from \`order\` as o
    inner join driver using(driver_id)
    inner join student as std using (student_id)
    inner join person on std.person_id = person.person_id
    inner join restaurant using(restaurant_id)
    inner join driver_rating using(driver_rating_id)
    inner join rating as dr using(rating_id)
    inner join restaurant_rating using(restaurant_rating_id)
    inner join rating as rr on rr.rating_id = restaurant_rating.rating_id`,
  ).catch(console.log)

  res.status(200).json(result);
})

app.post("/ratings", async function update(req, res) {
  const {order_id, driver, restaurant, driver_rating, restaurant_rating} = req.body;
  const connection = await mysql.createConnection({
    host: 'localhost',
    user: 'root',
    password: 'password',
    database: 'Campus_Eats_Fall2020'
  }).catch(console.log);

  if (restaurant)
    await connection.query(`update restaurant set restaurant_name = ? where (select restaurant_id from \`order\` where order_id = ?) = restaurant_id;`,
    [restaurant, order_id]).catch(console.log);

  if (driver)
    await connection.query(`update person
      inner join student
        using(person_id)
      inner join driver
        using(student_id) 
      inner join \`order\`
        using(driver_id)
      set person_name = ?
      where order_id = ?;`,
      [driver, order_id]).catch(console.log);
  
  if (restaurant_rating)
    await connection.query(`update rating
    inner join restaurant_rating
      using(rating_id)
    inner join \`order\` as o
      using(restaurant_rating_id)
    set rating = ?
    where o.order_id = ?;`,
    [restaurant_rating, order_id]).catch(console.log);

  if (driver_rating)
    await connection.query(`update rating
      inner join driver_rating
        using(rating_id)
      inner join \`order\` as o
        using(driver_rating_id)
      set rating = ?
      where o.order_id = ?;`,
      [driver_rating, order_id])
      .catch(console.log);

  res.sendStatus(200);
});

app.delete("/ratings/:order_id", async (req, res) => {
  const { order_id } = req.params;
  const connection = await mysql.createConnection({
    host: 'localhost',
    user: 'root',
    password: 'password',
    database: 'Campus_Eats_Fall2020'
  }).catch(console.log);

  await connection.query(`delete from \`order\` where order_id = ?;`, [order_id]).catch(console.log);
  res.sendStatus(200);
})

module.exports = app;
// select person_name from `order` inner join driver as dr using(driver_id) inner join student as std using (student_id) inner join person on std.person_id = person.person_id;
//  select person_name as driver, restaurant_name as restaurant from `order` inner join driver as dr using(driver_id) inner join student as std using (student_id) inner join person on std.person_id = person.person_id inner join restaurant using(restaurant_id);