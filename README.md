# ProjectManagement-Project03
## TO-DO

### Stuff to put in backend requirements
- pip install pymysql
- pip install fastapi
- pip install sqlalchemy
- pip install uvicorn
- pip install cryptography
- pip install flask

## Stuff to put in frontend requirements
- npm install
- npm install axios

### To run everything right now
- database: 
    - install sql files in database manually and run
        - mysql -u root -p -h localhost sakila < sakila-schema.sql
        - mysql -u root -p -h localhost sakila < sakila-data.sql
- backend:
    - uvicorn main:app --reload
- frontend:
    - npm run dev

### To run everything dockerized
- database: 
    - docker build -t sakila .
        - If getting error "exec: "docker-credential-desktop": executable file not found in $PATH, out:", do vim ~/.docker/config.json and change credsStore to credStore
    - docker run sakila
    - to stop docker container, open new shell window
        - docker ps
            - to display all container ids running
        -docker stop <container ID>
