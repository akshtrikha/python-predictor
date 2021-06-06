[![akshtrikha](https://circleci.com/gh/akshtrikha/python-predictor.svg?style=svg)](https://app.circleci.com/pipelines/github/akshtrikha/python-predictor?branch=main)

## Python Predictor

In this project, we operationalize a Machine Learning Microservice API.

We have a pre-trained, `sklearn` model that has been trained to predict housing prices in Boston according to several features, such as average rooms in a home and data about highway access, teacher-to-pupil ratios, and so on. More about the data on [kaggle](https://www.kaggle.com/c/boston-housing). This project showcases the ability to operationalize a Python flask app—in a provided file, `app.py`—that serves out predictions (inference) about housing prices through API calls. This project could be extended to any pre-trained machine learning model, such as those for image recognition and data labeling.

### Project Tasks

* Test the project code using linting
* Complete a Dockerfile to containerize this application
* Deploy the containerized application using Docker and make a prediction
* Improve the log statements in the source code for this application
* Configure Kubernetes and create a Kubernetes cluster
* Deploy a container using Kubernetes and make a prediction
* Upload a complete Github repo with CircleCI to indicate that your code has been tested

---

## Setup the Environment

* Create a virtualenv and activate it
* Run `make install` to install the necessary dependencies

### Running `app.py`

1. Standalone:  `python app.py`
2. Run in Docker:  `./run_docker.sh`
3. Run in Kubernetes:  `./run_kubernetes.sh`

### Kubernetes Steps

* Setup and Configure Docker locally
* Setup and Configure Kubernetes locally
* Create Flask app in Container
* Run via kubectl

| Files | Description |
|---|---|
| .circleci/config.yml | The configuration file for CircleCI to create a CI/CD Pipeline |
| model_data | ML Model to make predictions |
| output_txt_files | Files containing the log outputs of make_prediction.sh |
| app.py | Python app to form predictions |
| Dockerfile | File to build docker image |
| make_prediction.sh | Script to input data to the app to make predictions |
| Makefile | File to define set of tasks to be executed |
| requirements.txt | File containing the list of required dependencies |
| run_docker.sh | Script to build docker image and run the app in it |
| run_kubernetes.sh | Script to build a kubernetes cluster to run the app |
| upload_docker.sh | Script to upload the docker image to a repository |