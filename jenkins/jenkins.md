jenkins_1  | Jenkins initial setup is required. An admin user has been created and a password generated.
jenkins_1  | Please use the following password to proceed to installation:
jenkins_1  |
jenkins_1  | 01730fb9807d4ddc831761dc165fcd58
jenkins_1  |
jenkins_1  | This may also be found at: /var/jenkins_home/secrets/initialAdminPassword

sudo mkdir /cinder
sudo mkdir /cinder/jenkins
sudo chown -R 1000 /cinder/jenkins
sudo systemctl restart docker
