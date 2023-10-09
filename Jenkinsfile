pipeline {
agent { node { label 'AGENT-1' } }
  options {
       // ansiColor('xterm')
         timeout(time: 1, unit: 'HOURS')
    } 

    stages {

      
        stage('Init') {
            steps {
               
                sh '''
           
                ls -ltr
                pwd
                terraform init 
                '''
                echo 'push from git hub'

            }
        }


        stage('Unlock Terraform State') {
            steps {
                script {
                    // Change to the directory where your Terraform configuration is located
                    dir('/home/centos/workspace/demo-pipeline1@2') {
                        // Run terraform force-unlock with the lock ID

                        // Confirm the unlock with 'yes' and force-unlock
                        input message: 'Do you want to force-unlock Terraform state?', ok: 'yes', submitter: 'user'
                        sh 'terraform force-unlock 1fd9e16d-14b4-1c92-515a-82cbf64620e4'

                        sh 'terraform force-unlock 1fd9e16d-14b4-1c92-515a-82cbf64620e4'
                    }
                }
            }
        }
        stage('Plan') {
            steps {
              sh '''
                ls -ltr
                pwd
                terraform plan 
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