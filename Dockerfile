
# Building on top of Ubuntu.
FROM ubuntu
# Update the repository sources list
RUN apt-get update -y
# Install and run apache
RUN apt-get install curl -y
RUN apt-get install apache2 -y && apt-get clean
# Install apache and write a short message
RUN echo "Hurray you just deployed your first code via Docker and CircleCI" > /var/www/html/index.html
EXPOSE 80
#run apache in foreground
#CMD service apache2 start
CMD ["apachectl", "-D", "FOREGROUND"]
#Finished
