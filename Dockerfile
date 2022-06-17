
FROM python:alpine3.16

# set the working directory in the container
WORKDIR C:\Users\sambo\Documents\GitHub\TP3-Cedric-SAMBOUN

COPY app.py ./

# copy the dependencies file to the working directory
COPY requirements.txt .

# install dependencies
RUN pip install -r requirements.txt

# command to run on container start
#CMD ["flask", "run", "--host", "0.0.0.0:8081"]
CMD [ "python3", "./app.py" ]
