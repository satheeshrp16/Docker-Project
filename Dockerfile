FROM python:3.7
RUN pip install Flask
RUN pip install MySQL
RUN pip install requests
RUN pip install flask_mysqldb
VOLUME /flask
COPY flask/ /flask
EXPOSE 8080
WORKDIR /flask
CMD [ "python", "./app_script.py" ]
#test
