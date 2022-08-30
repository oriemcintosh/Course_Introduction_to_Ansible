#! /bin/bash

aws --profile acg-lab cloudformation create-stack \
	--stack-name ansible-server-inventory \
	--template-body file://02_02_Introduction_To_Ansible/setup-env.yml \
	--parameters ParameterKey=NameOfService,ParameterValue="ansible-instances" \
	ParameterKey=KeyName,ParameterValue="ansible-course-key-pair" \
	--tags Key=Provisioner,Value=CLI \
	Key=Environment,Value=sandbox \
	Key=Source,Value=acg
