##  Image Creation  
 
 - Click on `Add Step`
   - Go to builds and click on run 
   - Change the settings as following:
   
      - Name: `Create Image`
      - Container registry: Click on Docker Connecter created in the previous step 
      - Image: `node:14`
      - Commands: Copy the following command and click on apply changes.
 
         ```
         touch nodejsdockerfile
         cat > nodejsdockerfile <<- EOM
         FROM node:14
         WORKDIR /nodejshelloworld
         COPY package*.json index.js ./
         RUN npm install
         EXPOSE 8080
         CMD ["node", "index.js"]
         EOM
         cat nodejsdockerfile
         ```
         
      
 ## Build and Push Image to Docker Registry
 
 - Click on `Add Step`
 - Go to `Builds` and click on `Build And Push an Image to Docker Registry`
 -  Change the settings as following:
    - Name: `Build and Push Image to Docker Hub`
    - Docker connector: Select the Docker Connector you created previously 
    - Docker repository: `<docker-hub-username>/<docker-repository name>`
    - Tags: `latest`

Now we move to Integration Testing and execute the Pipeline

Click on **[Integration Test and Run Pipeline](integration.md)**
