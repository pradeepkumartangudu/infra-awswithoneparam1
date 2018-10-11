pipeline { 
    agent any 
    parameters {
        string(
                name: 'bucketname',
                defaultValue:"",
                description: "Where to put the build!")
    }
    stages {
        stage('Build') { 
            steps { 
                load "./paramaters.groovy"
                sh 'echo $bucketname'
		sh 'wget -q https://releases.hashicorp.com/terraform/0.11.8/terraform_0.11.8_linux_amd64.zip'
                sh 'unzip -qo terraform_0.11.8_linux_amd64.zip'
                sh '''#!/bin/bash -l
				
				
		echo "test script"
		pwd
                ls ./ -al
		pwd
		echo $tf_path
		#sudo cp aws_config.tf $tf_path
		export AWS_ACCESS_KEY_ID=$access_key
		export AWS_SECRET_ACCESS_KEY=$secret_key
                ./terraform init -var environment=$environment -var foundation=$foundation -var costcenter=$costcenter -var appfamily=$appfamily -var platform=$platform -var owner=$owner -var aws_region=$aws_region -var kms_key_id=$kms_key_id -var bucketname=$bucketname -backend-config="access_key=$access_key" -backend-config="secret_key=$secret_key" -backend-config="key=runtime/$bucketname/terraform.tfstate"
		./terraform plan -var bucketname=$bucketname -var environment=$environment -var foundation=$foundation -var costcenter=$costcenter -var appfamily=$appfamily -var platform=$platform -var owner=$owner -var aws_region=$aws_region -var kms_key_id=$kms_key_id -var key=runtime/$bucketname/terraform.tfstate -out=current.tfplan
		
'''
            }
        }
         stage("Run unit tests"){
		 when {
			 expression {!params.destroy}
		 }
      steps {
		  sh '''#!/bin/bash -l
				
		export AWS_ACCESS_KEY_ID=$access_key
		export AWS_SECRET_ACCESS_KEY=$secret_key
		set +x
		./terraform apply current.tfplan
		
'''
	  
      }
    }
        stage('Deploy') {
            steps {
               echo 'Deploy' 
            }
        }
    }
}
