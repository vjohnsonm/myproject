This is my project that can be run using the CI/CD pipeline. After the jenkins job is completed, the war file will be put on the ansible controller. One of the stages in the Jenkins file uses the Publish Over SSH plugin to run the playbook that will use the war file and create a dockerfile, create the image, and run the container on the Dockerhost.
