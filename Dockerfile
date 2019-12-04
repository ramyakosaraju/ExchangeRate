
FROM centos:latest
RUN yum -y update
RUN yum install -y python3
RUN yum install -y python3-pip
RUN pip3 install requests
RUN pip3 install flask_sqlalchemy
RUN pip3 install flask_marshmallow
RUN pip3 install marshmallow-sqlalchemy
RUN pip3 install mysql-connector-python
RUN pip3 install -U flask-cors
ADD ./ExchangeRate.py /
ADD ./templates/Visualization.html /templates/Visualization.html
ADD ./static/utils.js /static/utils.js
ADD ./static/Chart.min.js /static/Chart.min.js

EXPOSE 5000
CMD python3 ./ExchangeRate.py
#CMD python3 ./hello.py
