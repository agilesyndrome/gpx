# GPX: Let's go places

## Context
I'm an avid cyclist with a Garmin GPS watch. I get amazing .gpx files from every ride 
I take that detail where I've been. What's the best way to use this information? The 
Garmin SDK is not my favorite tool. I prefer a simpler approach. I like to load up the GPS
points into a PostgreSQL database, and visualze this with a tool called [QGIS](https://www.qgis.org/en/site/forusers/download.html). 

In order to translate the GPX files into a format Postgres can understand, I use a tool `ogr2ogr` provided by the GDAL library.
GDAL has a lot of dependencies, and this repo records how I installed them on my Macbook Pro (M1 Pro).

## Contributing

Open a PR! I love feedback. This repo is opinionated based on how I use GDAL, but I'm happy to hear how you use it too.

## Build Requirements


### Postgres
Download and install the [MacOS Postgres app](https://postgresapp.com/downloads.html).  Setup a sample Postgres database for us to use later. This will also install the necessary libraries. 

### Dependencies from Brew

(Not using a mac? You probably know what to do. apt install, apk add, yum add, etc)
* `brew install cmake` : Build requirement
* `brew install sqlite3` : Don't try installing multiple versions of Sqlite3 on your Macbook. Bad things will happen. Very bad things. Let brew handle this for us.



## Getting Started
You need some dependencies like libtiff, proj, and gdal.

Try the easy way:
```
sudo make
```
