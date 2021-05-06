select person_name as driver, restaurant_name as restaurant, dr.rating as driver_rating, rr.rating as restaurant_rating 
from `order` as o 
inner join driver using(driver_id)
inner join student as std using (student_id)
inner join person on std.person_id = person.person_id
inner join restaurant using(restaurant_id)
inner join driver_rating using(driver_rating_id
inner join rating as dr using(rating_id)
inner join restaurant_rating using(restaurant_rating_id)
inner join rating as rr on rr.rating_id = restaurant_rating.rating_id;

update restaurant set restaurant_name = "McDonald's" where (select restaurant_id from `order` where order_id = 1) = restaurant_id;

update person
inner join student
  using(person_id)
inner join driver
  using(student_id) 
inner join `order`
  using(driver_id)
set person_name = "Yoel Kiflezghi"
where order_id = 1;

update rating
inner join restaurant_rating
  using(rating_id)
inner join `order` as o
  using(restaurant_rating_id)
set rating = 0
where o.order_id = 1;

update rating
inner join driver_rating
  using(rating_id)
inner join `order` as o
  using(driver_rating_id)
set rating = 3
where o.order_id = 1;
