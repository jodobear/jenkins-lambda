pipeline {
  agent { docker { image "amazon/aws-cli" } }

  stages {
    stage('Deploy Lambda') {
      steps {
        sh './deploy.sh'
      }
    }
  }
}
