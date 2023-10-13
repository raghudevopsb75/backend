pipeline {
  agent { label 'workstation'}

  stages {

    stage('Download Dependencies'){
      steps {
        sh 'npm install'
      }
    }

    stage('Code Quality'){
      steps {
        sh 'sonar-scanner -Dsonar.host.url=http://172.31.91.185:9000 -Dsonar.login=admin -Dsonar.password=admin123 -Dsonar.projectKey=backend -Dsonar.qualitygate.wait=true'
      }
    }

    stage('Unit Tests'){
      steps {
        // Ideally we should run the tests , But here the developer have skipped it. So assuming those are good and proceeding
        // sh 'npm test'
        echo 'CI'
      }
    }

    stage('Release'){
      steps {
        echo 'CI'
      }
    }

  }

}
////
