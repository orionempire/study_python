FROM python:3.6.4

ENV PYTHONUNBUFFERED 1

#create containers mountpoints
RUN mkdir /code
RUN mkdir /config
WORKDIR /code

ADD ./docker/* /config/
RUN pip install -r /config/requirements.txt