### Integration Testing 

#### Nodejs Server

Now you have a Stage to clone, build, containerize, and then push your image to Docker Hub. In this step you'll add a Stage to pull that image, run it in a container, and run integration tests on it.

- Click Add Stage and select ```Build```
- Name it as ```Integration Test``` 
- Turn off ```Clone from Codebase``` 
- Click ```Setup Stage``` 
  - Go to the ```Stage Overview``` turn on ```Clone Codebase```

    - Now we will setup Stage Infrastructure
      - Go to Infrastructure and select propagate from an existing stage.
        - Select the previous stage
        - Click ```Next```
        - 
In the Build Test and Push stage, you built your code and pushed your built image to Docker Hub.
Harness will pull the image onto the container in your infrastructure. Next, it will start the Hello World Server in the image.

   - Go to execution tab in run integration stage 
       - Select ```Add Step``` 
         -  Go to builds and select background 
       - Change the settings as following 
          - Name: ```Nodejs Server``` 
          - Description(optional): ```Server Connection```
          - Container registry: Select the Docker Connector you created previously
          - Shell: ```Sh```
          - Select ```Apply Changes``` 
          - 
#### Connecting to Server

Next we can run an integration test. We'll simply test the connection to the server.

- Select add step in the execution tab of run integration stage 
  - Go to Builds and select Run 
    - Change the settings as following 
       - Name: ```Test Connection to Server``` 
       - Container registry: Select Docker Connector you created .
       - Image: ```curlimages/curl:7.73.0```
       - Commands:
        ```
        sleep 10
        curl --request GET \
        --url http://localhost:8080
        echo "test sucessfull"
       ```
       
     - Select ```Apply Changes```.
     - 
## Execute the Pipeline

 - Click ↑Save
 - Click ```Run```
 - The Pipeline Inputs settings appear.
   - Under CI Codebase, select ```Git branch```.
   - In Git Branch, enter the name of the branch where the codebase is, here ```main```
     - Click Run Pipeline.
