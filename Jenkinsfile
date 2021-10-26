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
    agent 
    {
        dockerfile true
    }

    stages
    {
        stage('Test')
        {
            steps
            {
                sh 'node:16-alpine3.12'
            }
        }
    }
}