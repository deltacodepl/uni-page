import React, { useState, useEffect } from 'react';
import axios from 'axios';
import Box from '@mui/material/Box';
import Divider from '@mui/material/Divider';
import Grid from '@mui/material/Grid';
import Icon from '@mui/material/Icon';
import ListItem from '@mui/material/ListItem';
import ListItemAvatar from '@mui/material/ListItemAvatar';
import ListItemText from '@mui/material/ListItemText';
import Typography from '@mui/material/Typography';
import { useTheme } from '@mui/material/styles';
import Checkbox from '@mui/material/Checkbox'
import FormControlLabel from '@mui/material/FormControlLabel'
import FormGroup from '@mui/material/FormGroup'
import { BOX_CHOICES } from '../utils/constant';


const Inquiry = () => {
  const theme = useTheme();
  
  const [about, setAbout] = useState([]);

  const [statuses, setStatuses] = useState({})

  const handleChange = (event) => {
      setStatuses({ ...statuses, [event.target.name]: event.target.checked })
    }
  
  const handleSubmit = (event) => {
    event.preventDefault();
  }

  const fetchAbout = () => {
    axios.get('/about', {
      headers: {
        'Accept': 'application/json',
        'Access-Control-Allow-Origin': process.env.BACKEND_URL,
      }
    })
    .then(response => {
      setAbout(response.data);
    })
    .catch(err => console.log(err));
  };
    
  useEffect(() => {
    fetchAbout();
  }, []);

  return (
    <div id='inquiry'>
       <FormGroup>
      {BOX_CHOICES.map((status) => (
        <FormControlLabel
          key={status.value}
          control={<Checkbox checked={statuses[status.value]} onChange={handleChange} name={status.value} />}
          label={status.label}
        />
      ))}
    </FormGroup>
    <Divider />
    </div>
  );
};

export default Inquiry;