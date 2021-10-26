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
                echo "Test karke dekhte hain kya tatti banaya hai is developer ne"
            }
        }

        stage('Build')
        {
            steps
            {
                echo "Building that tatti docker image"

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
                echo "Building that tatti docker image"

                sh "docker push hafizaatifkamal/nodeapp:16-alpine3.12"
            }
        }

        stage('Run')
        {
            steps
            {
                echo "Running that tatti docker image"

                sh "docker --pull run hafizaatifkamal/nodeapp:16-alpine3.12"

                //sh "docker run hafizaatifkamal/nodeapp:16-alpine3.12 "
            }
        }
    }
}