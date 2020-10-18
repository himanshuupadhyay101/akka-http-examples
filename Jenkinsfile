pipeline{
	agent any
	stages{
		stage('Compile'){
			
			steps{ 
       echo "Compiling the project"
				sh "sbt clean compile"
			      }
		}
		stage('Testing'){
				
			steps{
        echo "Testing the project"
				sh "sbt test:test"
			       }
		              
		               }
		
		stage('JAR')
		{
			when{
				branch 'master'
			}
			
			steps{
				
				sh "sbt assembly"
			}
			
			}
		stage('build image'){
			when{
				branch 'master'
			}
				
			steps{
			     sh " docker build -t  himanshu1018/assignments ."
			       }
		              
		              }
		
		
		
	     stage('push image'){
				
			steps{
			    withCredentials([string(credentialsId: 'DOCKER_HUB_CREDENTIALS', variable: 'DOCKER_HUB_CREDENTIALS')]) {
  
				    sh "docker login -u himanshu1018 -p ${DOCKER_HUB_CREDENTIALS}"
                                                                                                         }
				
				sh " docker push himanshu1018/assignments"
			       }
		              
		              }
	      }
	       	}
