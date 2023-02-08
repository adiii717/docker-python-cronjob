FROM python:3.10

RUN apt-get update && apt-get -y install cron vim

WORKDIR /app

COPY crontab /etc/cron.d/crontab
COPY hello.py /app/hello.py

RUN chmod 0644 /etc/cron.d/crontab
RUN crontab /etc/cron.d/crontab

# Create a virtual environment
RUN python -m venv /opt/venv

# Activate the virtual environment
ENV PATH="/opt/venv/bin:$PATH"

# Create empty log (TAIL needs this)
RUN touch /tmp/out.log

# Run cron and tail the log
CMD cron && tail -f /tmp/out.log