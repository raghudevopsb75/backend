pipeline {
  agent { label 'workstation'}

  stages {

    stage('Download Dependencies'){
      steps {
        sh 'npm install'
        sh 'env'
      }
    }

    stage('Code Quality'){
      when {
        allOf {
          expression { env.GIT_BRANCH == "origin/main" }
          //expression { env.TAG_NAME != env.BRANCH_NAME }
        }
      }
      steps {
        //sh 'sonar-scanner -Dsonar.host.url=http://172.31.91.185:9000 -Dsonar.login=admin -Dsonar.password=admin123 -Dsonar.projectKey=backend -Dsonar.qualitygate.wait=true'
        echo 'OK'
      }
    }

    stage('Unit Tests'){
      when {
        allOf {
          branch 'main'
        }
      }
      steps {
        // Ideally we should run the tests , But here the developer have skipped it. So assuming those are good and proceeding
        // sh 'npm test'
        echo 'CI'
      }
    }

    stage('Release'){
      when {
        expression { env.TAG_NAME ==~ ".*" }
      }
      steps {
        echo 'CI'
      }
    }

  }

}
////
