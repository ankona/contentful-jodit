pipeline {
    agent { node { label 'contentful-agent' }}

    stages {     
        stage('Configure Contentful CLI Environment') {
            steps {
                sh "contentful config add --as '${SPACE_ID}' --mt '${CONTENTFUL_MANAGEMENT_ACCESS_TOKEN}'"
                sh "contentful config list"
            }
        }
        stage('Find existing extension') {
            steps {
                script {
                    ext_info=sh(returnStdout: true, 
                                script: "contentful extension get --id joditEditor")
                    echo "$ext_info"
                }
            }
        }
        stage('Checkout') {
            steps {
                checkout scm
            }
        }
        stage('Create UI Extension') {
            when {
                expression { 
                    ext_info.indexOf('404') > 0
                }
            }
            steps {
                sh "contentful extension create --space-id $SPACE_ID"
            }
        }
        stage('Update UI Extension') {
            when {
                expression { 
                    ext_info.indexOf('404') == -1
                }
            }
            steps {
                sh "contentful extension update --force --space-id $SPACE_ID"
            }
        }
    }
}