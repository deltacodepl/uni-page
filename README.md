# Landingpage

This is a one page website built using **Django 3**, **Django REST Framework 3**, **Next.js 12**, and **Material UI 5** that uses a **PostgreSQL** database to store data.


![plot](https://github.com/deltacodepl/opak-page/blob/main/frontend/public/images/light.png?raw=true)


## Prerequisites

Install the following prerequisites:

1. [Node.js](https://nodejs.org/en/)
2. [Docker & Docker Compose](https://www.docker.com/)
3. [Visual Studio Code](https://code.visualstudio.com/download)


## Installation

### Backend

#### 1. Backend is containerized

Look for this file in **root** directory:

```bash
docker-compose.yml
```

#### 2. Set up backend environment variables

From the **backend** directory run:

```bash
touch config/.env
```

Declare environment variables in the **.env** file.

```bash
SECRET_KEY=yoursecretkey
DATABASE_NAME=database
DATABASE_USER=user
DATABASE_PASSWORD=password
DATABASE_HOST=db
FRONTEND_URL=http://localhost:3000
DJANGO_SUPERUSER_EMAIL=admin@yourdomain.com
DJANGO_SUPERUSER_USERNAME=admin
DJANGO_SUPERUSER_PASSWORD=password
```

### Frontend

#### 1. Install required frontend dependencies

From the **root** directory run:

```bash
cd frontend
```
```bash
npm install
```

#### 2. Set up frontend environment variables

From the **frontend** directory run:

```bash
touch .env.development && touch .env.production
```


Ddeclare environment variables in the **.env.development** file. Make sure you don't use quotation marks around the strings.

```bash
BACKEND_HOST=127.0.0.1
BACKEND_URL=http://127.0.0.1:8000
```

## Run the application


#### 1. Run backend

From the **root** directory run:

```bash
docker compose up --build
```

#### 2. Run frontend

From the **frontend** directory run:

```bash
npm run dev
```

#### 3. View the application

Go to http://localhost:3000/ to view the application.


## Modify data in the application

Go to http://localhost:8000/admin to access the Django Admin interface and sign in using the admin credentials
admin/password.


## Copyright and License

Code released under the MIT license.

Thanks to https://github.com/BobsProgrammingAcademy