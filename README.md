# Jenkins as code
This project aims to:
- provide a way for a simple declarative Jenkins configuration
- provide a local workflow to develop and execute Jenkins pipelines locally

Currently is highly experimental:
- don't use it for any production environment
- don't expose it to the Internet

## External requirements
Docker is required.


## Bootstrap
- Clone this repo
- Run the command

```bash
$ ./bootstrap.sh
```
This starts a dockerized local Jenkins instance from the source code in this repo.

## Fast cycle pipeline develoment
```bash
$ ./replay-pipeline.sh
```
Executes the pipeline thats rebuils Jenkins using the local Jenkinsfile modification without pushing.


## Known issues
Missing plugins don't cause docker image build failure.

## Further reference
### Plugin installation
- https://github.com/jenkinsci/docker#preinstalling-plugins
### Configuration as code
- https://plugins.jenkins.io/configuration-as-code/
- https://github.com/jenkinsci/configuration-as-code-plugin/tree/master/demos
### Jobs configuration
- https://github.com/jenkinsci/configuration-as-code-plugin/tree/master/demos/jobs
### IDE configuration
- https://www.jenkins.io/blog/2020/02/25/vscode-caseStudy/
### Jenkins pipeline run with local modifications
- https://gitlab.com/fhuitelec-learning/poc/jenkins-replay/