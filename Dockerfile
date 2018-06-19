FROM python:2.7
ENV PYTHONUNBUFFERED 1
RUN mkdir /code
WORKDIR /code
ADD requirements.txt /code/
RUN pip install -r requirements.txt
RUN apt-get install default-libmysqlclient-dev
ADD . /code/
RUN pip install H5PP-0.1.9.tar.gz
