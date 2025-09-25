pipeline{
    agent any
    environment {
        PATH = "/opt/maven/bin:$PATH"
    }

    stages {
        stage('git clone') {
            steps {
                git url: "https://github.com/KanhaiyaITGIT/railyatri-project.git", branch: "main"
            }
        }

        stage('build') {
            steps {
                sh "mvn clean install"
            }
        }

        stage('sonarqube analysis') {
            environment {
                sonarHome = tool 'sonarqube-scanner-server'
            }
            steps {
                withSonarQubeEnv('Sonar-qube-server'){
                sh "${sonarHome}/bin/sonar-scanner"
                }
            }
        }
    }
}
