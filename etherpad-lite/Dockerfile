FROM node:8
WORKDIR /code
ADD . /code/
RUN cp settings.json.template.docker settings.json.template
CMD ./bin/run.sh
