import * as React from "react";
//import Avatar from "@mui/material/Avatar";
import Button from "@mui/material/Button";
import CssBaseline from "@mui/material/CssBaseline";
import TextField from "@mui/material/TextField";
import FormControlLabel from "@mui/material/FormControlLabel";
import Checkbox from "@mui/material/Checkbox";
//import Link from "@mui/material/Link";
import Paper from "@mui/material/Paper";
import Box from "@mui/material/Box";
import Grid from "@mui/material/Grid";
//import LockOutlinedIcon from "@mui/icons-material/LockOutlined";
import Typography from "@mui/material/Typography";
import { useTheme } from "@mui/material/styles";
//import { LazyLoadImage } from 'react-lazy-load-image-component';
import { SubmitHandler, useForm, Controller } from "react-hook-form";
import { zodResolver } from "@hookform/resolvers/zod";
import { z } from "zod";

import axios from 'axios';

const formSchema = z
  .object({
    firstName: z.string().min(3, "First Name is required").max(100),
    lastName: z.string().min(3, "Last Name is required").max(100),
    email: z.string().email("Invalid email. Please enter a valid email address").min(4, "Email is required"),
    length: z.union([z.number().int().positive().min(60), z.nan()]).optional().nullish(),
    width: z.union([z.number().int().positive().min(60), z.nan()]).optional().nullish(),
    height: z.union([z.number().int().positive().min(30), z.nan()]).optional().nullish(),
    marketing: z.boolean(),
    // marketing: z.literal(true, {
    //   errorMap: () => ({ message: "You must accept the terms and conditions" }),
    // }),
  });



const client = axios.create({
  baseURL: "http://127.0.0.1:8000/inquires",
  headers: {
    'Accept': 'application/json',
    'Content-Type': 'application/json',
  }
})


export default function SignInSide() {
  const {
    register,
    control,
    handleSubmit,
    formState: { errors }
  } = useForm({
    resolver: zodResolver(formSchema)
  });

  const onSubmit = (data) => {
    //event.preventDefault();
    //const formData = new FormData(data);
    console.log(data);
    let inquiryData = {
      email: data.email,
      first_name: data.firstName,
      last_name: data.lastName,
      box_dimensions: [data.length, data.width, data.height].join("/"),
      marketing: data.marketing,
    }
    client.post(
      "/add/",
      inquiryData,
    ).then(
      console.log(inquiryData)
    );
  };

  const isEmpty = (value) => {
    return value == null || value.trim() === "" || value === NaN;
  };
  const theme = useTheme();

  return (
    <Box
      maxWidth={{ sm: 720, md: 1236 }}
      width={1}
      margin='0 auto'
      paddingX={2}
      paddingY={4}
    >
      <Box marginBottom={4}>
        <Typography
          variant='h4'
          align='center'
          data-aos='fade-up'
          fontWeight={700}
          gutterBottom
        >
          About us
        </Typography>
        <Typography
          variant='h6'
          align='center'
          color={theme.palette.text.secondary}
          data-aos='fade-up'
        >
          Twórcą serwisu Opakowaniareklamowe.pl jest Spółka Segregatory24, powstała na bazie 19 lat doświadczeń w produkcji wyrobów reklamowych z tektury.  Misją Segregatory24 jest tworzenie produktów promocyjnych wychodzących naprzeciw potrzebom klientów. Sta
        </Typography>
      </Box>
      <Grid container component="main" sx={{ height: "60vh" }}>
        <CssBaseline />
        {/* <Box 
            component={LazyLoadImage}
            src='/images/keenys_048.jpg'
            alt='Background Image'
            effect='blur'
            height={{ xs: 'auto', md: 1 }}
            maxHeight={{ xs: 300, md: 1 }}
            width={1}
            maxWidth={1}
            /> */}
        <Grid
          item
          xs={false}
          sm={4}
          md={7}
          sx={{
            backgroundImage: "url(../../../images/keenys_048.jpg)",
            backgroundRepeat: "no-repeat",
            backgroundColor: (t) =>
              t.palette.mode === "light"
                ? t.palette.grey[50]
                : t.palette.grey[900],
            backgroundSize: "cover",
            backgroundPosition: "center",
          }}
        />
        <Grid item xs={12} sm={8} md={5} component={Paper} elevation={6} square>
          <Box
            sx={{
              my: 8,
              mx: 4,
              display: "flex",
              flexDirection: "column",
              alignItems: "center",
            }}
          >

            <Typography component="h1" variant="h5">
              Jak możemy Ci pomóc?
            </Typography>
            <Box
              component="form"
              noValidate
              onSubmit={handleSubmit(onSubmit)}
              sx={{ mt: 3 }}
            >
              <Grid container spacing={2}>
                <Grid item xs={12} sm={6}>
                  <TextField
                    autoComplete="given-name"
                    name="firstName"
                    required
                    fullWidth
                    id="firstName"
                    label="First Name"
                    autoFocus
                    {...register('firstName')}
                    error={errors.firstName ? true : false}
                  />
                  <Typography variant="inherit" color="textSecondary">
                    {errors.firstName?.message}
                  </Typography>
                </Grid>
                <Grid item xs={12} sm={6}>
                  <TextField
                    required
                    fullWidth
                    id="lastName"
                    label="Last Name"
                    name="lastName"
                    autoComplete="family-name"
                    {...register('lastName')}
                    error={errors.lastName ? true : false}
                  />
                  <Typography variant="inherit" color="textSecondary">
                    {errors.lastName?.message}
                  </Typography>
                </Grid>
                <Grid item xs={12}>
                  <TextField
                    required
                    fullWidth
                    id="email"
                    type="email"
                    label="Email Address"
                    name="email"
                    autoComplete="email"
                    {...register('email')}
                    error={errors.email ? true : false}
                  />
                  <Typography variant="inherit" color="textSecondary">
                    {errors.email?.message}
                  </Typography>
                </Grid>

                <Grid item xs={12} sm={4}>
                  <TextField
                    fullWidth
                    type="number"
                    name="length"
                    label="Length (L)"
                    id="length"
                    inputProps={{ min: 60 }}
                    {...register('length', {
                      setValueAs: (v) => v === "" ? undefined : parseInt(v, 10),
                    })}
                    error={errors.length ? true : false}
                  />
                  <Typography variant="inherit" color="textSecondary">
                    {errors.length?.message}
                  </Typography>
                </Grid>
                <Grid item xs={12} sm={4}>
                  <TextField
                    fullWidth
                    type="number"
                    name="width"
                    label="Width (W)"
                    id="width"
                    inputProps={{ min: 60 }}
                    {...register('width', {
                      setValueAs: (v) => v === "" ? undefined : parseInt(v, 10),
                    })}
                    error={errors.width ? true : false
                    }
                  />
                  <Typography variant="inherit" color="textSecondary">
                    {errors.width?.message}
                  </Typography>
                </Grid>
                <Grid item xs={12} sm={4}>
                  <TextField
                    fullWidth
                    type="number"
                    name="height"
                    label="Height (H)"
                    id="height"
                    inputProps={{ min: 30 }}
                    {...register('height', {
                      setValueAs: (v) => v === "" ? undefined : parseInt(v, 10),
                    })}
                    error={errors.height ? true : false}
                  />
                  <Typography variant="inherit" color="textSecondary">
                    {errors.height?.message}
                  </Typography>
                </Grid>
                <Grid item xs={12}>
                  {/* <FormControlLabel
                    control={
                      <Checkbox
                        value="allowExtraEmails"
                        color="primary"
                        name="marketing"
                        {...register('marketing')}
                      />
                    }
                    label=""
                  /> */}
                  {/* <FormControlLabel
                    control={
                      <Controller
                        name="allow"
                        control={control}
                        render={({ field: props }) => (
                          <Checkbox
                            {...props}
                            checked={props.value}
                            onChange={(e) => props.onChange(e.target.checked)}
                          />
                        )}
                      />
                    }
                    label="otrzym"
                  /> */}
                  <Controller
                    control={control}
                    name="marketing"
                    defaultValue={true}
                    render={({ field: { value, onChange, ...field } }) => (
                      <FormControlLabel
                        control={
                          <Checkbox onChange={onChange} checked={value} {...field} />
                        }
                        label="Chcę otrzymywać wiadomości o promocjach i nowościach na email"
                      />
                    )}
                  />
                </Grid>
              </Grid>
              <Button
                type="submit"
                fullWidth
                variant="contained"
                sx={{ mt: 3, mb: 2 }}
              >
                Wyślij
              </Button>

            </Box>
          </Box>
        </Grid>
      </Grid>
    </Box>
  );
}