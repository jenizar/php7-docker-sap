# php7-docker-sap
PHP7 Apps Docker on SAP Cloud Platform Cloud Foundry

![alt text](https://github.com/jenizar/php7-docker-sap/blob/master/Screenshot.png)

Linux script command for docker:   

Change directory:

1. cd Desktop/SAP-Cloud-Platform/php7-docker-sap

Build docker:

2. docker build -t php7-docker-sap .

Run docker:

3. docker run -d -p 8080:80 -v ~/Desktop/SAP-Cloud-Platform/php7-docker-sap/:/var/www/html/ php7-docker-sap

Check docker existing in local computer:

4. docker ps -a

Push to hub.docker.com (docker login): - username & password

5. docker tag php7-docker-sap jenizar/php7-docker-sap:version1.0

6. docker push jenizar/php7-docker-sap

Push to SAP Cloud (cf login): - username & password

7. CF_DOCKER_PASSWORD=initial1 cf push php7-docker-sap –docker-image jenizar/php7-docker-sap:latest –docker-username jenizar


References:
1. https://blogs.sap.com/2017/11/04/deploy-a-container-to-sap-cloud-platform-cf-using-docker-hub-and-github/

2. https://blogs.sap.com/2018/11/21/can-i-deploy-an-application-using-docker-container-onto-scp-cloud-foundry.-really/

3. https://github.com/jason-callaway/phpinfo/blob/master/Dockerfile

4. Youtube video: https://youtu.be/kggcLT6_beo

