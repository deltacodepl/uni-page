import React, { useState, useEffect } from 'react';
import axios from 'axios';
import Image from 'next/image';
import Avatar from '@mui/material/Avatar';
import Box from '@mui/material/Box';
import Card from '@mui/material/Card';
import CardContent from '@mui/material/CardContent';
import Divider from '@mui/material/Divider';
import Grid from '@mui/material/Grid';
import Typography from '@mui/material/Typography';
import { useTheme } from '@mui/material/styles';
import ImageList from '@mui/material/ImageList';
import ImageListItem from '@mui/material/ImageListItem';
import { LazyLoadImage } from 'react-lazy-load-image-component';

function srcset(image, size, rows = 1, cols = 1) {
  return {
    src: `${image}?w=${size * cols}&h=${size * rows}&fit=crop&auto=format`,
    srcSet: `${image}?w=${size * cols}&h=${
      size * rows
    }&fit=crop&auto=format&dpr=2 2x`,
  };
}


const Gallery = () => {
  const theme = useTheme();

  const [gallery, setGallery] = useState([]);

  const fetchImages = () => {
    axios.get('/technologies', {
      headers: {
        'Accept': 'application/json',
        'Access-Control-Allow-Origin': process.env.BACKEND_URL,
      }
    })
    .then(response => {
      setGallery(response.data);
    })
    .catch(err => console.log(err));
  };

  useEffect(() => {
    fetchImages();
  }, []);

  return (
    <div id='gallery'>
      <Box
        maxWidth={{ sm: 720, md: 1236 }}
        width={1}
        margin='0 auto'
        paddingX={2}
        paddingY={{ xs: 4, sm: 6, md: 8 }}
      >
        <Box>
          <Box marginBottom={4}>
            <Typography
              variant='h3'
              align='center'
              fontWeight={700}
              marginTop={theme.spacing(1)}
              data-aos='fade-up'
              gutterBottom
            >
              Galeria
            </Typography>
            {/* <Typography
              variant='h6'
              align='center'
              color={theme.palette.text.secondary}
              data-aos='fade-up'
              marginTop={4}
              marginBottom={6}
            >
              Technologies we use to build our products
            </Typography> */}
            <ImageList
            // sx={{ width: 1204, height: 602 }}
            variant="quilted"
            cols={4}
            rowHeight={350}
            gap={1}
          >
            {gallery.map((item, index) => (
              <ImageListItem key={item.image} cols={
                pattern[
                  index - Math.floor(index / pattern.length) * pattern.length
                ].cols
              }
              rows={
                pattern[
                  index - Math.floor(index / pattern.length) * pattern.length
                ].rows
              }
              sx={{
                
              }}>
                <img
                  {...srcset(item.image, 350, pattern[
                    index - Math.floor(index / pattern.length) * pattern.length
                  ].rows,
                  pattern[
                    index - Math.floor(index / pattern.length) * pattern.length
                  ].cols)}
                  alt={item.title}
                  loading="lazy"
                />
              </ImageListItem>
            ))}
          </ImageList>
          </Box>
          {/* <Grid container spacing={2}> */}
          
          {/* </Grid> */}
        </Box>
      </Box>
      
      <Divider />
    </div>
  );
};
const pattern = [
  {
    rows: 2,
    cols: 2,
  },
  {
    rows: 1,
    cols: 1,
  },
  {
    rows: 1,
    cols: 1,
  },
  {
    rows: 1,
    cols: 2,
  },
];
export default Gallery;