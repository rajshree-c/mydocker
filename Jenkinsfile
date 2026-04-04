pipeline{
    agent any
    stages{
        stage('1. Checkout'){
            steps{
              git url: 'https://github.com/rajshree-c/mydocker.git' ,branch: 'main'
            }
        }

        stage('2. Build HTML Image'){
            steps{
                bat 'docker build -t myweb .'
            }
        }

        stage('3. Stop HTML Container'){
            steps{
                bat 'docker stop htmlcont || exit 0'
                bat 'docker rm htmlcont || exit 0'
            }
        }

        stage('4. Run HTML Container'){
            steps{
                bat 'docker run -d -p 8000:80 --name htmlcont myweb'
            }
        }

        stage('5. Build Node Image'){
            steps{
                bat 'docker build -t nodeapp -f Dockerfile.node .'
            }
        }

        stage('6. Stop Node Container'){
            steps{
                bat 'docker stop nodecont || exit 0'
                bat 'docker rm nodecont || exit 0'
            }
        }

        stage('7. Run Node Container'){
            steps{
                bat 'docker run -d -p 3000:3000 --name nodecont nodeapp'
            }
        }
    }
}
