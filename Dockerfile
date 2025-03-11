FROM redhat/ubi8     
# FROM specifies the base image to use for building docker image
RUN yum install python36 -y
RUN pip3 install flask
# RUN used to execute commands inside the image during build process
WORKDIR /code
# WORKDIR make a working directory 
EXPOSE 5000
#EXPOSE specifies which ports a container listens on
COPY app.py app.py
#copy files from source to destination 
#CMD ["Hello Komal"]
#CMD specifies the command to run when the container starts and can be overridden at runtime.
ENTRYPOINT ["python3","app.py"]
# ENTRYPOINT defines the default executable that will run when a container is started from image and cannot be overridden
