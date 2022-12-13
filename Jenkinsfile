pipeline {
    agent any 
    stages {
        stage('Installation') { 
            steps {
                echo "Installation of ansible is done successfully...."
                sh 'rm -rf /var/lib/jenkins/workspace/pipe_build_and_deploy_test/demoproject'
                sh 'pwd'
                sh 'git clone git@github.com:Nikitas2906/demoproject.git'
                sh 'sudo chown -R jenkins:jenkins /var/lib/jenkins/workspace/pipe_build_and_deploy_test/demoproject'
                sh 'sudo cp /var/lib/jenkins/workspace/pipe_build_and_deploy_test/demoproject/ansible/ansible/ansible.cfg /etc/ansible/ansible.cfg'
                //sh 'chmod +x /var/lib/jenkins/workspace/pipe_build_and_deploy_test/demoproject/ansible/links'
                //sh 'cp /var/lib/jenkins/workspace/pipe_build_and_deploy_test/demoproject/ansible/links /var/lib/jenkins/workspace/pipe_build_and_deploy_test/demoproject/ansible/links.sh'
                //sh '/bin/bash /var/lib/jenkins/workspace/pipe_build_and_deploy_test/demoproject/ansible/links.sh'
            }
        }
        stage('Test') { 
            steps {
                echo "Testing ansible status...." 
         
                sh 'sudo ansible webservers -m ping'
            }
        }
        stage('Deploy') { 
            steps {
                echo "Deploying the code...." 
                sh 'cd /var/lib/jenkins/workspace/pipe_build_and_deploy_test/demoproject/ansible/ansible/playbooks; ansible-playbook  /var/lib/jenkins/workspace/pipe_build_and_deploy_test/demoproject/ansible/ansible/playbooks/apache.yml ansible_ssh_user=jenkins'
                sh 'curl -I http://128.199.22.122:80'
            }
        }
    }
}
