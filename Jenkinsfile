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
				
				sh "sbt package"
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
	      }
	       	}
