<include a CircleCI status badge, here>
https://circleci.com/gh/MohamedEssam4444/operationalize-a-machine-learning-microservice-api.svg?style=svg

## Project Overview

given a pre-trained, `sklearn` model that has been trained to predict housing prices in Boston according to several features, such as average rooms in a home and data about highway access, teacher-to-pupil ratios, and so on. You can read more about the data, which was initially taken from Kaggle, on [the data source site](https://www.kaggle.com/c/boston-housing). This project tests ability to operationalize a Python flask app—in a provided file, `app.py`—that serves out predictions (inference) about housing prices through API calls. This project could be extended to any pre-trained machine learning model, such as those for image recognition and data labeling.

### Project Tasks

project goal is to operationalize this working, machine learning microservice using [kubernetes](https://kubernetes.io/), which is an open-source system for automating the management of containerized applications. In this project :
* Test project code using linting
* Complete a Dockerfile to containerize this application
* Deploy your containerized application using Docker and make a prediction
* Improve the log statements in the source code for this application
* Configure Kubernetes and create a Kubernetes cluster
* Deploy a container using Kubernetes and make a prediction
* Upload a complete Github repo with CircleCI to indicate that your code has been tested

### setup the environmnent

Create a virtualenv and activate it

Run make install to install the necessary dependencies

### running app.py

Standalone: python app.py

Run in Docker: ./run_docker.sh

Run in Kubernetes: ./run_kubernetes.sh

### kubernetes steps

Setup and Configure Docker locally

Setup and Configure Kubernetes locally

Create Flask app in Container

Run via kubectl

### explanation of the files in the repo 

**Makefile** : The Makefile includes instructions on environment setup and lint tests

**run_docker** : build image locally specified in Dockerfile

**app.py** : contain application

**kubernetes_config.yaml** : contains template for building the kubernetes cluster with 3 replica pods

followed by : `kubectl create -f kubernetes_config.yaml to run template`

**upload_docker**: file tags and uploads an image to Docker Hub

**out_docker.txt**: after running make_prediction ; contains log output from Docker prediction

**run_kubernetes.sh**: Run the Docker Hub container with kubernetes and portforward app (another way to use kubernetes with docker container other than using kubernetes_config.yaml)


**out_kubernetes.txt**: after running make_prediction ; log output from kubernetes prediction

![Screenshot from 2020-10-16 07-34-05](https://user-images.githubusercontent.com/68178003/96217510-07bea880-0f83-11eb-9a41-c1c6a2a69cce.png)

.circleci/config.yaml : for the integration between circle ci and the project to test it 
