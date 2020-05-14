def output

pipeline {
  agent { docker { image "amazon/aws-cli:latest" } }

  stages {
    stage('Configure aws-cli') {
      steps {
        // withCredentials(
        //  [[
        //    $class: 'UsernamePasswordMultiBinding',
        //    credentialsId: 'aws-', usernameVariable: 'AWS_ACCESS_KEY_ID', passwordVariable: 'AWS_SECRET_ACCESS_KEY']])
  withCredentials(
          [[
             $class: 'AmazonWebServicesCredentialsBinding',
             accessKeyVariable: 'AWS_ACCESS_KEY_ID',
             credentialsId: 'aws-superuser',  // ID of credentials in Jenkins
             secretKeyVariable: 'AWS_SECRET_ACCESS_KEY'
          ]]) {
                echo "Deploying Lambda Fn"
                sh   "AWS_ACCESS_KEY_ID=${AWS_ACCESS_KEY_ID} \
                      AWS_SECRET_ACCESS_KEY=${AWS_SECRET_ACCESS_KEY} \
                      AWS_REGION=eu-central-1 \
                      ./deploy.sh"
                echo "${AWS_ACCESS_KEY_ID}"
              }
      }
    }
  }
}
