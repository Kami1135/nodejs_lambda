package:
	chmod +x ops/scripts/*
	ops/scripts/package-lambda-code.sh	

deploy-lambda-staging: python-requirements package
	ops/bin/provision-resource.sh lambda staging.tfvars nodejs_staging

deploy-lambda-dev: python-requirements package
	ops/bin/provision-resource.sh lambda develop.tfvars nodejs_dev

deploy-lambda-production-dry-run: python-requirements package
    ops/bin/dry-run.sh lambda production.tfvars nodejs_production

deploy-lambda-production: python-requirements package
	ops/bin/provision-resource.sh lambda production.tfvars nodejs_production

deploy-redis-staging: python-requirements package
	ops/bin/provision-resource.sh redis staging.tfvars redis_staging

deploy-redis-dev: python-requirements package
	ops/bin/provision-resource.sh redis develop.tfvars redis_dev

deploy-redis-production-dry-run: python-requirements package
    ops/bin/dry-run.sh redis production.tfvars redis_production

deploy-redis-production: python-requirements package
	ops/bin/provision-resource.sh redis production.tfvars redis_production