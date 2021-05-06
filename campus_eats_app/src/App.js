import './App.css';
import { SimpleDialog as Dialog} from "./Dialog"
import StarRatings from 'react-star-ratings';
import { Button } from '@material-ui/core'
import { makeStyles } from '@material-ui/core/styles';
import React, { useEffect } from 'react';
import { json } from 'body-parser';

function App() {
  const [open, setOpen] = React.useState(false);
  const [dialogTitle, setTitle] = React.useState("");
  const [dialogData, setDialogData] = React.useState();
  const [data, setData] = React.useState([]);
  const [updateData, setUpdateData] = React.useState();
  const [deleteData, setDeleteData] = React.useState();
  const [updatedToggle, setUpdatedToggle] = React.useState(false);

  useEffect(() => {
    fetch("/ratings")
    .then((res) => res.json())
    .then(setData);
  }, [updatedToggle])

  useEffect(() => {
    fetch("/ratings", updateData)
    .then(() => setUpdatedToggle(!updatedToggle))
    .catch(console.log)
  }, [updateData]);

  useEffect(() => {
    if (deleteData){
      console.log("will delete");
      fetch(`/ratings/${deleteData}`, {method: "DELETE"})
      .then(() => setUpdatedToggle(!updatedToggle))
      .catch(console.log)
    }
  }, [deleteData])

  const updateRequestOptions = {
      method: 'POST',
      headers: { 'Content-Type': 'application/json' }
  };
  
  const useStyles = makeStyles((theme) => ({
    root: {
      display: "flex",
      flexDirection: "column",
      alignItems: "center",
      justifyContent: "center",
      margin: "5em"
    },
    button: {
      margin: "0 0.5em"
    }
  }));
  const classes = useStyles();
  // Dialog


  const handleClickOpen = (title, order_id) => {
    setOpen(true);
    setTitle(title);
    if (order_id >= 0) {
      const dialogData = data.find(elem => elem.order_id == order_id)
      setDialogData({data: dialogData, order_id})
    }
  };

  const handleClose = (output) => {
    if (output.restaurant || output.restaurant_rating || output.driver || output.driver_rating) {
      const requestOptions = {...updateRequestOptions, body: JSON.stringify(output)}
      setUpdateData(requestOptions);
    }
    setOpen(false);
  };

  const handleDelete = (order_id) => {
    
  }

  return (
    <div className={classes.root}>
      <table>
        <tbody>
          <tr>
            <th>Driver</th>
            <th>Restaurant</th>
            <th>Driver Rating</th>
            <th>Restaurant Rating</th>
          </tr>
          {data.sort((a, b) => a.order_id - b.order_id).map((elem) => 
            <tr key={elem.order_id}>
              <td>{elem.driver}</td>
              <td>{elem.restaurant}</td>
              <td>
                <StarRatings
                  rating={elem.driver_rating}
                  starRatedColor="goldenrod"
                  starDimension="1em"
                  starSpacing="0em"
                />
              </td>
              <td>
                <StarRatings
                  rating={elem.restaurant_rating}
                  starRatedColor="goldenrod"
                  starDimension="1em"
                  starSpacing="0em"
                />
              </td>
              <td>
                <div>
                  <Button className={classes.button} color="primary" variant="contained" size="small" onClick={() => handleClickOpen("Update Record", elem.order_id)}>Update</Button>
                  <Button className={classes.button} color="secondary" variant="outlined" size="small" onClick={() => setDeleteData(elem.order_id)}>Delete</Button>
                </div>
              </td>
            </tr>)
          }
        </tbody>
      </table>
      <h2>Create Record</h2>
      <Button color="primary" variant="outlined" size="medium" onClick={() => handleClickOpen("Create Record")}>Create</Button>
      {open && <Dialog data={dialogData} open={open} onClose={handleClose} title={dialogTitle}/>}
    </div>
  );
}

export default App;
