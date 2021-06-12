pipeline{
    //Directives

    agent { label 'Slave-01' }

    tools {
        maven 'maven'
    }

    environment{
       ArtifactId = readMavenPom().getArtifactId()
       Version = readMavenPom().getVersion()
       Name = readMavenPom().getName()
       GroupId = readMavenPom().getGroupId()
    }

    stages {
        // Specify various stage with in stages

        // stage 1. Build
        stage ('Build'){
            steps {
                sh 'mvn clean install package'
            }
        }

        // Stage 2 : Testing
        stage ('Test'){
            steps {
                echo ' testing......'

            }
        }

        // Stage 3 : Publish the artifacts to Ansible Node
        stage ('Publish artifact to a folder in the Ansible Controller'){
            steps {
                echo ' Publish artifact to a folder in the Ansible Controller......'
                sh ' scp /home/jenkins-slave-01/workspace/pipeline/target/myproject-0.0.1.war ansibleadmin@10.0.1.12:/opt/playbooks/myproject.war'
            }
        }

        // Stage 4 : Print some information
        stage ('Print Environment variables'){
            steps {
                echo "Artifact ID is '${ArtifactId}'"
                echo "Version is '${Version}'"
                echo "GroupID is '${GroupId}'"
                echo "Name is '${Name}'"
            }
        }


        // Stage 5 : Deploy the war file to the Docker Host
        stage ('Deploy the war file to the Docker Host'){
            steps {
                echo ' Deploy the war file to the Docker Host......'
            }
        }



    }

}