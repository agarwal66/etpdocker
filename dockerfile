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
#                 git 'https://github.com/YOUR_USERNAME/hello-docker-app.git' // ← Yahan apna GitHub repo link daal
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
# docker build -t hello-app .