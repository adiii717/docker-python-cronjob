# docker-python-cronjob
Run python script as a cron job using Docker
## Build Docker
```
docker build -t python-cron .
```
## Run docker container
```
docker run -it --rm python-cron
```
## Container console logs
```
hello world!
Welcome to python cron job
hello world!
Welcome to python cron job
hello world!
```


### Run with modules

If you are trying to run the script that required some module for instance numpy, you might face module not found error. 

> Code is running Traceback (most recent call last): File "/app/main.py", line 3, in import numpy as np ImportError: No module named numpy 

To resolve this, please look into [./cron-numpy/](https://github.com/Adiii717/docker-python-cronjob/tree/master/cron-numpy)

Inspired from this SO question
https://stackoverflow.com/q/67531710/3288890
