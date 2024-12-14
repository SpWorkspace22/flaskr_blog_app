This is sample blogapp created using flak and python

It can be run in different way

Prerequisite:
    docker and python must be installed

Initial Setip
    Navigate to myproject directory
    run pip insatll -r requirement.txt

1. Locally

    run flask --app flaskr init-db (To initialize db)
    run flask --app flaskr run --debug

2. As Single Docker Container 
    build docker image : docker build -t <tag_name> .
    run container docker run -d -p<host_port:5000> --name <container_name> <image_name>

3. As Docker container using docker compose 
    run docker compose up and access app using http://localhost:5000/

4. As Docker Swarm Service
    Setup your manager and worker nodes 
    run a private register : docker service create --name registery -p<host_port:5000> registery:v2
    build & push image 
        example:
        docker build -t 127.0.0.1:<host_port>/spworkspace22/flask:v1
        docker push 127.0.0.1:<host_port>/spworkspace22/flask:v1

    deploy service
        docker stack deploy -c swarm_compose.yml <name_of_service>
        '''