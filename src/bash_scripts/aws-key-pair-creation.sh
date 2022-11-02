#! /bin/bash

aws --profile acg-lab ec2 create-key-pair \
	--key-name ansible-course-key-pair \
	| jq -r .KeyMaterial > ansible-course-key-pair.pem

mv -f ansible-course-key-pair.pem ../files/
sudo chmod 400 ../files/ansible-course-key-pair.pem
