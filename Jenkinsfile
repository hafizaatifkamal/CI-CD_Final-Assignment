// pipeline
// {
//     agent
//     {
//         docker
//         {
//             image "node:16-alpine3.12"
//             args "-p 3000:3000"
//         }
//     }
    
//     stages
//     {
//         stage("Build")
//         {
//             steps
//             {
//                 sh "npm install"
//             }
//         }
//     }
// }

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

                sh "docker build -t music-app-ui/nodeapp:16-alpine3.12 ."
            }
        }

        stage('Push')
        {
            steps
            {
                echo "Building that tatti docker image"

                sh "docker push music-app-ui/nodeapp:16-alpine3.12"
            }
        }
    }
}