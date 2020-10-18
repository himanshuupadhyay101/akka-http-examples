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
				branch 'Development'
			}
			
			steps{
				
				sh "sbt package"
			}
			
			
		}
	      }
	       	}
