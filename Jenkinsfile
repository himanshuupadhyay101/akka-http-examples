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
				sh "sbt test"
			       }
		              
		               }
		
	stage('JAR')
		{
			when{   
				branch 'master'
			}
			
			steps{
				
				sh "sbt assembly"                                                                  //sbt package vs sbt assembly
			}
			
			}
	stage('build image'){
			when{
				branch 'master'
			}
				
			steps{ 
				echo "Building the image "
			     sh " docker build -t  himanshu1018/assignments:$BUILD_NUMBER ."
			       }
		              
		              }
		
		
		
         stage('push image'){
				when{
				branch 'master'
			             }
			
			steps{
			    withCredentials([string(credentialsId: 'DOCKER_HUB_CREDENTIALS', variable: 'DOCKER_HUB_CREDENTIALS')]) {
                                     echo "pushing the image to the dockerhub registry"
				    sh "docker login -u himanshu1018 -p ${DOCKER_HUB_CREDENTIALS}"
                                                                                                         }
				
				sh " docker push himanshu1018/assignments:$BUILD_NUMBER"
			       }
		     
		     		post {
     always {
     mail to: "himanshu.upadhayay@knoldus.com",
     subject: "Image build succesfully",
     body: "Hello successfull completion f task, ${env.JOB_NAME} has been build successfully"
             }
		}
		              
		              }
		
		stage('Deploy to K8'){
			when{
				branch 'master'
			         //    }
			
			steps{
			kubernetesDeploy(
				  configs: 'deploy.yml',
				   
		 kubeconfigId: 'KUBERNETES_CLUSTER_CONFIG',
				   
			 enableConfigSubstitution: true
			         
				 //sh  "pwd" 
				  
				   
				  )
				
			      }
		              
		              }

		
	   
}
	       	}
