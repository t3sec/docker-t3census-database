# T3census Database Docker image

## Details

Docker image that implements a PostgreSQL databaser server for T3census project

## Building image

`sudo docker build -t t3census-database .`

## Create and using image

* create volume: `sudo docker volume create --name t3census-pgdata`
* create image: `sudo docker create -p 5432:5432 -e POSTGRES_PASSWORD=t3census -v t3census-pgdata:/var/lib/postgresql/data --name instance.t3census-database t3census-database`
* start image: `sudo docker start instance.t3census-database`
* stop image: `docker stop instance.t3census-database`
* remove image: `docker rm instance.t3census-database`
* remove volume: `sudo docker volume rm t3census-pgdata`