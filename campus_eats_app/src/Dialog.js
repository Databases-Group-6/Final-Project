import React from 'react';
import PropTypes from 'prop-types';
import { makeStyles } from '@material-ui/core/styles';
import Button from '@material-ui/core/Button';
import DialogTitle from '@material-ui/core/DialogTitle';
import Dialog from '@material-ui/core/Dialog';
import StarRatings from 'react-star-ratings';
import { TextField } from '@material-ui/core'

export function SimpleDialog(props) {
  const { onClose, open, title, data } = props;
  const [restaurant, setRestaurant] = React.useState();
  const [driver, setDriver] = React.useState();
  const [restaurantRating, setRestaurantRating] = React.useState()
  const [driverRating, setDriverRating] = React.useState()

  const handleClose = () => {
    const output = {
      order_id: data?.order_id,
      driver,
      restaurant,
      driver_rating: driverRating,
      restaurant_rating: restaurantRating,
    }
    onClose(output);
  };

  const useStyles = makeStyles(() => ({
    textField: {
      '& .MuiTextField-root': {
        margin: "0 0 1em 0"
      },
      display: "flex",
      flex: 1,
      flexDirection: "column",
      alignItems: "center",
    },
    rating: {
      display: "flex",
      flexDirection: "column",
      margin: "0 2em",
    },
    ratings: {
      display: "flex",
      justifyContent: "space-between"
    },
    submit: {
      margin: "2em"
    }
  }));
  const classes = useStyles();
  return (
    <Dialog onClose={handleClose} open={open}>
      <DialogTitle id="simple-dialog-title">{title}</DialogTitle>
      <form className={classes.textField}>
        <div>
        </div>
        <div className={classes.ratings}>
        <div className={classes.rating}>
          <TextField label="Driver Name" defaultValue={data?.data?.driver} onChange={(event) => setDriver(event.target.value)}/>
            <StarRatings
              rating={driverRating ?? data?.data?.driver_rating}
              starRatedColor="goldenrod"
              starDimension="1em"
              starSpacing="0em"
              changeRating={(val) => setDriverRating(val)}
              name="driver"
            />
            <p>Driver Rating</p>
          </div>
          <div className={classes.rating}>
          <TextField label="Restaurant Name" defaultValue={data?.data?.restaurant} onChange={(event) => setRestaurant(event.target.value)}/>
            <StarRatings
              rating={restaurantRating ?? data?.data?.restaurant_rating}
              starRatedColor="goldenrod"
              starDimension="1em"
              starSpacing="0em"
              changeRating={(val) => setRestaurantRating(val)}
              name="restaurant"
            />
            <p>Resturant Rating</p>
          </div>
        </div>
        <div><Button className={classes.submit} color="primary" variant="outlined" size="medium" onClick={handleClose}>{"Submit"}</Button></div>
      </form>
    </Dialog>
  );
}

SimpleDialog.propTypes = {
  onClose: PropTypes.func.isRequired,
  open: PropTypes.bool.isRequired,
  title: PropTypes.string.isRequired,
  data: PropTypes.object
};
