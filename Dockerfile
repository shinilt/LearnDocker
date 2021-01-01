# This is a sample Dockerfile.
#Get the official Python Base Image for version 3.7 from Docker Hub
FROM python:3.7

# In the image, create a directory named app, set it as working directory.
RUN mkdir /app
WORKDIR /app

#Copy everything from the current folder(where the Dockerfile is placed) to the newlu created app folder in the image.
ADD . /app/

#additional installations. Below command is specfic to python. Other languages will have different needs.
RUN pip install -r requirements.txt

#For any port to be exposed by the container specify them.
EXPOSE 5000
#The command to be run when the container is started.
CMD ["python", "/app/main.py"]
