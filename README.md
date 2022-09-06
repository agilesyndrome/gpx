# GPX: Let's go places

## Requirements



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
