pipeline{
agent any
stages
{
stage('Compile')
{
   steps{ 
      sh "sbt clean compile"
          }
}		
				
stage('Testing')
{
   steps{
     sh "sbt test"
        }
}
stage('packaging')
{
when{   
branch 'master'
}
   steps{
	sh "sbt assembly"                                                                  //sbt package vs sbt assembly
	}
}
stage('build image')
{
when{
branch 'master'
     }
    steps{ 
	 sh " docker build -t  himanshu1018/assignments:$BUILD_NUMBER ."
          }
}
stage('push image')
{
when{
branch 'master'
     }
     steps{
     withCredentials([string(credentialsId: 'DOCKER_HUB_CREDENTIALS', variable: 'DOCKER_HUB_CREDENTIALS')]) {
          echo "pushing the image to the dockerhub registry"
	  sh "docker login -u himanshu1018 -p ${DOCKER_HUB_CREDENTIALS}"
          sh " docker push himanshu1018/assignments:$BUILD_NUMBER"
			       }
	   }
}	
stage('Deploy to K8')
{
when{
branch 'master'
  }
			
        steps{
	//kubernetesDeploy(
	//    configs: 'deploy.yml',
        //     kubeconfigId: 'KUBERNETES_CLUSTER_CONFIG',
	 //    enableConfigSubstitution: true
	//		  )
		sh "pwd"
		sh "kubectl delete -f deployment.yml"
        sh "kubectl create -f deployment.yml"
		}
            post {
		    always{       mail to: "himanshu.upadhayay@knoldus.com",
                     subject: "Image build succesfully",
                     body: "Hello successfull completion f task, ${env.JOB_NAME} has been build successfully"
                  }
	    }
	    }
  }

		
	   
}
				
			steps{
			     sh " docker build -t  himanshu1018/assignments ."
			       }
		              
		              }
	      }
	       	}
