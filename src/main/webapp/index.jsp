<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="icon" href="../../favicon.ico">

    <title>Johnson Mathew Final Capstone Project</title>


    <!-- Custom styles for this template -->
    <link href="jumbotron.css" rel="stylesheet">

    <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
    <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>

<body>

<div class="navbar navbar-inverse navbar-fixed-top" role="navigation">
    <div class="container">
        <div class="navbar-header">
            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="#">Johnson Capstone Project Demo</a>
        </div>

    </div>
</div>

<!-- Main jumbotron for a primary marketing message or call to action -->
<div class="jumbotron">
    <div class="container">
        <h2>SimpliLearn Capstone Project Submission</h2>
        <p>This is Johnson's Project implementaion for Capstone Project 2 - Hangout Point.</p>
        <p><a class="btn btn-primary btn-lg" role="button">Final Assessment Capstone &raquo;</a></p>
    </div>
</div>

<div class="container">
    <!-- Example row of columns -->
    <div class="row">
        <div class="col-md-4">
            <h2>Terraform</h2>
            <p>I have used Terraform as my IaC tool. I am using terraform files to create the below EC2 instances for the project</p>
            <ol>
                <li>JenkinsMaster/li>
                <li>JenkinsSlave</li>
                <li>AnsibleController</li>
                <li>DockerHost</li>
              </ol> 
        </div>
        <div class="col-md-4">
            <h2>Git,Maven and GitHub</h2>
            <p>I have used Git for version controlling. Maven as a build tool. I have used GitHub as my source code repository </p>
            <ol>
                <li>github plugin</li>
                <li>git plugin</li>
                <li>maven integration</li>
                <li>publish over ssh</li>
                <li>pipeline utility step</li>
              </ol>  
        </div>
        <div class="col-md-4">
            <h2>Setting up Jenkins With Master Slave Configuration</h2>
            <p>I have used Jenkins as my continuous integration tool. I have configured Jenkins Master Slave configuration to run Jenkins job on the Slave. I have used declarative pipelines for the automation. Jenkins file is stored with source code </p>

        </div>
        <div class="col-md-4">
            <h2>Configured GitHub, Maven, Publish Over SSH, Pipeline Utiliy, Docker PipeLine plugins,  SSH Build agent plugin</h2>
            <p>I have used the jenkins plugins to help with the running of the build jobs.</p>

        </div>
        <div class="col-md-4">
            <h2>Docker for Containerization</h2>
            <p>I have used Docker for Containerization. Dockerfile, Artifact image and container will be created with Ansible playbook</p>

        </div>
        <div class="col-md-4">
            <h2>Ansible</h2>
            <p>I have used Ansible for configuration management tool to help with deploying the artifacts on the Docker Hosts.</p>

        </div>
        <div class="col-md-4">
            <h2>Jenkins Build Execution</h2>
            <p>Jenkins has been configured to do Poll SCM. The Jenkins pipeline script will as part of pipeline stage create a dockerfile, create a image and run the container on the DockerHost.</p>

        </div>
        <div class="col-md-4">
            <h2>Access the application on the DockerHost </h2>
            <p>The web application can be accessed on the browser using:   http://3.16.81.48:8080/latest/</p>

        </div>

    </div>

    <hr>

    <footer>
        <p>&copy; Johnson Mathew Final Capstone Project</p>
    </footer>
</div> <!-- /container -->


<!-- Bootstrap core JavaScript
================================================== -->
<!-- Placed at the end of the document so the pages load faster -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
<script src="//maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="//maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css">
<link rel="stylesheet" href="//maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap-theme.min.css">
</body>
</html>
