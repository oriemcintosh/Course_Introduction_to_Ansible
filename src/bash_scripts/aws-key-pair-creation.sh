#! /bin/bash

aws --profile acg-lab ec2 create-key-pair \
	--key-name ansible-course-key-pair \
	--key-type rsa \
	--key-format pem \
	--query "KeyMaterial" \
	--output text > ../../extra_resources/ansible-course-key-pair.pem

chmod 400 ../../extra_resources/ansible-course-key-pair.pem
