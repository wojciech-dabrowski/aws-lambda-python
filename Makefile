test:
	python -m unittest

build:
	sam build

deploy:
	sam build && sam deploy --template-file ./.aws-sam/build/template.yaml --stack-name aws-lambda-python --s3-bucket serverless-source-code-bucket --s3-prefix aws-lambda-python/ --region eu-west-1 --capabilities CAPABILITY_IAM --no-fail-on-empty-changeset