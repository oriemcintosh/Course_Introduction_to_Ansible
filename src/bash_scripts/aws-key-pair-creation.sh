#! /bin/bash

aws --profile acg-lab ec2 create-key-pair \
	--key-name ansible-course-key-pair \
	--key-type rsa \
	--key-format pem \
	--query "KeyMaterial" \
	--output text > src/output/ansible-course-key-pair.pem

sudo chmod 400 src/output/ansible-course-key-pair.pem
