FROM python:3.7
RUN apt-get update && apt-get -y install cron vim
WORKDIR /app
RUN pip3 install numpy
COPY crontab /etc/cron.d/crontab
RUN chmod 0644 /etc/cron.d/crontab
RUN /usr/bin/crontab /etc/cron.d/crontab
COPY main.py main.py
RUN echo $PYTHONPATH
# run crond as main process of container
CMD ["cron", "-f"]
