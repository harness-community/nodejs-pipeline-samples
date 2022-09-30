# Nodejs Sample Pipelines in Harness

# To Do

TODO:
- [X] Understanding the basics of Harness (LInk to an existing doc or create a new doc under harness-community/overview and link it here)
- [X] Requirements
- [ ] Environment
- [ ] Steps to use the samples on Harness App
- [ ] Explain a bit on what the sample app does
- [ ] Other useful links
- [ ] License info
- [X] [Harness Community - Communication Guide](https://github.com/harness-community/overview/blob/main/community_communication_guide.rst)

Introduction
========================
This repository is a home for snippets of YAML code and a sample hello world server of scripting for the Harness CI Community.

## Layout

The repository is broken up into six directories currently:

**[Tutorial](docs/tutorial.md)**<br>
**[Requirements](docs/requirements.md)**<br>
**[Harness Sample YAML](.harness)**<br>
**[Getting Started](#GettingStarted)**<br>
**[Workflow](#Workflow)**<br>
**[Build Instructions](docs/build.md)**<br>


## Getting Started

Use this README to get started with our sample pipeline repository for Nodejs. This guide outlines the basics of getting started with the Harness CI and provides a full code sample for you to try out.
This sample doesn’t include configuration options, for in depth steps and configuring the pipeline for example using triggers or using our templates see the  [Pipeline Configuration Docs](#).

Here we have build a simple two-stage CI Pipeline in Harness. Setting up and running the Pipeline will take about 30 minutes.
The Pipeline will build and run a unit test on a sample nodejs repository upload the artifact to Docker Hub and then run integration tests.
You can use publicly-available code, images, and your Github and Docker Hub accounts.

## Workflow

- Use a Kubernetes cluster build farm.
- Build the code and run unit tests in the build farm.
- Package the app as a Docker image and upload it to Docker Hub.
- Pull the uploaded image to the build farm as a Background Task. Check out more about background tasks [here](google.com)
- Run an integration test against the sample app.

## Graphical Summary

![alt text](https://files.helpdocs.io/i5nl071jo5/articles/x0d77ktjw8/1611599684642/image.png)

## Docs

- [Pipeline Creation & Build Set-up](docs/CreatePipeline.md)
- [Configuring the infrastructure & setting up Build & Run Unit Test stage](docs/build.md)
- [Build & Push Image to Docker](docs/DockerPush.md)
- [Create Integration Stage and Run the Pipeline](docs/Integration.md)

## Code of Conduct

All users and contributors of the Harness community should adhere to the following [Code of Conduct](https://github.com/harness/community/blob/main/CODE_OF_CONDUCT.md)!

## Communication

Refer [Harness Community Communications Guide](https://github.com/harness-community/overview/blob/main/community_communication_guide.rst) to interact with the wider community users/contributors, join slack workgroups to get help/help other users and create topics in [community.harness.io](https://community.harness.io)

### License

MIT License. See [COPYING](LICENSE) for more information.

