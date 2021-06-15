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
                //#Note:  The below command will always give error :  Permission denied (publickey,gssapi-keyex,gssapi-with-mic). To fix, from the src remove the jenkins-slave-01@10.0.1.11
                //# scp  jenkins-slave-01@10.0.1.11:/home/jenkins-slave-01/workspace/pipeline/target/myproject-0.0.1.war jenkins-slave-01@10.0.1.12:/home/jenkins-slave-01
                echo ' Publish artifact to a folder in the Ansible Controller......'
                sh 'scp /home/jenkins-slave-01/workspace/pipeline/target/myproject-0.0.1.war jenkins-slave-01@10.0.1.12:/opt/latestwar/latest.war'
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

        // Stage 5 : Copying the latest war file to the Docker Host, creating docker file, build image and run the container
        stage ('Deploy to Docker'){
            steps {
                echo "Deploying ...."
                sshPublisher(publishers: 
                [sshPublisherDesc(
                    configName: 'Ansible_Controller', 
                    transfers: [
                        sshTransfer(
                                cleanRemote:false,
                                execCommand: 'ansible-playbook /opt/playbooks/deploy_docker.yaml -i /opt/playbooks/hosts',
                                execTimeout: 120000
                        )
                    ], 
                    usePromotionTimestamp: false, 
                    useWorkspaceInPromotion: false, 
                    verbose: false)
                    ])
            
            }
        }



    }

}
