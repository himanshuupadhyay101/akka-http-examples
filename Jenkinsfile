pipeline{
	agent any
	stages{
		stage('Compile'){
			
			steps{ 
        sh "Compiling the project"
				sh "sbt clean compile"
			      }
		}
		stage('Test'){
				
			steps{
        sh "Testing the project"
				sh "sbt test:test"
			       }
		              
		               }
	      }
	       	}
    
