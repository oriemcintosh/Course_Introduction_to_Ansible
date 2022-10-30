#! /bin/bash

aws --profile acg-lab ec2 create-key-pair \
	--key-name ansible-course-key-pair \
	| jq -r .KeyMaterial > ansible-course-key-pair.pem

mv -f ansible-course-key-pair.pem ../output/
sudo chmod 400 ../output/ansible-course-key-pair.pem
