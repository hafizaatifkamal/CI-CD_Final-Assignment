pipeline
{
    agent any

    environment
    {
		DOCKERHUB_CREDENTIALS=credentials('AtifKamal')
	}

    stages
    {
        stage('Test')
        {
            steps
            {
                echo "Testing the React App developed by hafizaatifkamal & Team"
            }
        }

        stage('Build')
        {
            steps
            {
                echo "Building the React App developed by hafizaatifkamal & Team"

                sh "docker build -t hafizaatifkamal/nodeapp:16-alpine3.12 ."
            }
        }

        stage('Login')
        {

			steps
            {
                echo "Login Succesfully!"

				sh 'echo $DOCKERHUB_CREDENTIALS_PSW | docker login -u $DOCKERHUB_CREDENTIALS_USR --password-stdin'
			}
		}

        stage('Push')
        {
            steps
            {
                echo "Pushing the React App developed by hafizaatifkamal & Team"

                sh "docker push hafizaatifkamal/nodeapp:16-alpine3.12"
            }
        }

        stage('Run')
        {
            steps
            {
                echo "Running the React App developed by hafizaatifkamal & Team"

                sh "docker --pull run hafizaatifkamal/nodeapp:16-alpine3.12"

                //sh "docker run hafizaatifkamal/nodeapp:16-alpine3.12 "
            }
        }
    }
}