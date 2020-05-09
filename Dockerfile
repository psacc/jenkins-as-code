FROM jenkins/jenkins:latest

# install declared plugins at build time
COPY plugins.txt /usr/share/jenkins/ref/plugins.txt
RUN /usr/local/bin/install-plugins.sh < /usr/share/jenkins/ref/plugins.txt

# mark jenkins as configured
RUN echo 2.0 > /usr/share/jenkins/ref/jenkins.install.UpgradeWizard.state