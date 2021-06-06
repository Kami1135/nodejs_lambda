
# Components added:
- Lambda Function (prod,staging and dev)
- API gateway to handle incoming requests and redirect it to lambda function.
- Route53 record for redis DNS. which can be accessed by application as `redisHost`.

# Source code need to be changed. (owner : developer)
- Read `redisHost` from lambda env variables.
- Update the code to provide lambda function `handler` function instead of running it as a web server.
- can't see any critical secrets in code. If there is recommendation is to use secret-manager in code.
- since redis is statefull. In case of serverless it should be deployed seperately.
- For service level alert developer should add the metrics in code. And push it to push-gateway for prometheus.

# Makefile:
- Makefile can become more generic by passing argument from jenkins/gitlab etc pipeline jobs.

# pipelines:
- Weather its any any tool(jenkins/gitlab etc). we can call the make targets in jobs.

# Scripts:
- `terraform init -no-color -backend-config="key=nodejs_test_app/$3"` . Ideally the staging, prod and dev should be on different aws accounts. But here considering it to be in the same account. so with the help of `-backend-config` isolating it state.

# Logs , monitoring and alerts:
- Lambda can be monitored via cloudwatch logs and metrics (where we can set the alerts).
- Recommended:
 * Export lambda infra metrics via cloudwatch-exporter to prometheus and then setup dashboards and alerts.
 * For service level alert developer should add the metrics in code. And push it to push-gateway for prometheus.