FROM       python:3
LABEL      maintainer="Ganesh Aher <@ganeshaher1998>"

ENV        REDIS_URL="redis://localhost:6379"

WORKDIR    /app
COPY       requirements.txt /app/
RUN        pip install -r requirements.txt

COPY       *.py /app/
RUN        chmod a+x *.py

CMD        ["./main.py"]
