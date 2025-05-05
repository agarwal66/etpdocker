FROM node:18
WORKDIR /usr/src/app
COPY package*.json ./
RUN npm install
COPY . .
EXPOSE 3000
CMD ["npm", "start"]
# pipeline {
#     agent any

#     stages {
#         stage('Clone') {
#             steps {
#                 git branch: 'main', url: 'https://github.com/agarwal66/etpdocker.git'
#             }
#         }

#         stage('Build Docker Image') {
#             steps {
#                 script {
#                     dockerImage = docker.build("hello-app")
#                 }
#             }
#         }

#         stage('Run Container') {
#             steps {
#                 script {
#                     dockerImage.run('-p 3000:3000')
#                 }
#             }
#         }
#     }
# }


