pipeline{
	agent any
	stages{
		stage('Compile'){
			
			steps{ 
        echo "Compiling the project"
				sh "sbt clean compile"
			      }
		}
		stage('Test'){
				
			steps{
        echo "Testing the project"
				sh "sbt test:test"
			       }
		              
		               }
	      }
	       	}
    
