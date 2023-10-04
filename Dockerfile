FROM python:3.7
RUN /var/lib/jenkins/workspace/project1@tmp/durable-fcc1c432/script.sh
RUN pip install flask
RUN pip install MySQL
RUN pip install requests
RUN pip install flask_mysqldb
VOLUME /flask
COPY flask/ /flask
EXPOSE 8080
WORKDIR /flask
CMD [ "python", "./app_script.py" ]
#test
