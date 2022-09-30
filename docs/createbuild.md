### Build Step

- Click on `Add Stage` to get started with the pipeline creation
- Select the type of stage as `Build`

<img width="1792" alt="BUILD IMG" src="#">

- Configure the Stage Settings as below
  - Name: `Build Test And Run`

**Setup the Connector**

- Select `Connectors` -> Click on `+ New Connector`

`Connector Type: Github`

<img width="1792" alt="Connectors" src="#">

`Name: nodejs-sample-connector`

`URL Type : Repository`

`Connection Type: HTTP`

- GitHub Repository URL: Paste the link of your forked repository

`Username: (Your Github Username)`

- Personal Access Token: [Check out how to create personal access token](https://docs.github.com/en/authentication/keeping-your-account-and-data-secure/creating-a-personal-access-token)

`Secret Name: Git-Token`

- Secret  Value: PAT value generated in Github

**Click on Save**

This will allow the repository to be fetched click on it and click `Apply Selected`

- Make Enable API access (ON) with the secret token created

- Click on Connect through Harness Delegate. [Check out more on Harness Delegate](https://docs.harness.io/article/sjjik49xww-kubernetes-cluster-connector-settings-reference)

To develop more understanding on Connectors [check out the docs here](overview.md)

Next Step(Execution)

#### Install Node Modules

- Click on `Add step`
 - Go to `Build` and click on `Run`
 - Change the settings as following 
 - Name: `Install Node Modules`
 - Container Registry -> Choose `New connector`
   - Click on `Docker Registry`
   - Change the settings as following 
       - Overview 
         - Name- `docker quickstart`
       - Details 
         - Docker registry url -  `https://index.docker.io/v1/`
         - Provider type - `Docker Hub`
         - Authentication - `Username and Password`
         - Username - Docker hub username 
         - Secret Token - [Check out how to create docker PAT](dockerpat.md)
       - Connect to Provider 
         - Choose connect through harness delegate -> Select Harness delegate you created 
         - It will take sometime to verify your credentials.
  - Image: `node:14`
  - Shell: `Sh`
  - Command:
 
    `npm install`
    
  - Then click on `Apply Changes`

Next we are going to create Image and Push the image to docker registry 

Click on **[Create Image and Push to Docker Registry](DockerPush.md)**
