pipeline {
 agent any
  options {
        ansiColor('xterm')
         timeout(time: 1, unit: 'HOURS')

    } 

    
    stages {
        stage('Init') {
            steps {
                dir('/home/centos/workspace/Aslam')
               
                sh '''
                cd vpc.tf
                ls -ltr
                pwd
                terrform init 
                '''
                echo 'push from git hub'

            }
        }
        stage('Plan') {
            steps {
              dir('/home/centos/workspace/Aslam')
              sh '''
                cd vpc.tf
                ls -ltr
                pwd
                terrform plan 
                '''

            }
        }
        stage('Approve') {
            steps {
                input 'Shall I apply....'
              //  error 'this is failed '
            }
        }
    }     
    post { 
        always { 
            echo 'I will always whether the job is success or not '
        }
   
  
        success { 
            echo 'I will always when job is success'
        }
        // failure { 
        //     echo 'I will run only when job is faiure'
    
        // }

     }
}