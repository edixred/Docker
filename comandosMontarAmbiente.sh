#SCRIPT PARA DESPLEGAR AMBIENTE SONARQUBE MEDIANTE EL USO DE IMAGENES DOCKER
docker-compose -f Docker/Jenkins.yml up -d
docker-compose -f Docker/Nexus.yml up -d
docker-compose -f Docker/Nginx.yml up -d
docker-compose -f Docker/Portaines.yml up -d
docker-compose -f Docker/SonarQube.yml up -d
docker-compose -f Docker/Tomcat.yml up -d
# obtener contraseña
echo ______________Jenkins Listo______________
#chmod 400 Docker/demokey
#scp -i Docker/demokey ubuntu@ec2-34-205-146-122.compute-1.amazonaws.com:/home/ubuntu/bkjenkins.tar .
#tar -xvf bkjenkins.tar

