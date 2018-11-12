echo "Example commands for setting up credhub for your pipeline:"
echo "team=$team"
echo "credhub set -n /concourse/\$team/git-commit-email    -t value -v \"\$(git config user.email)\""
echo "credhub set -n /concourse/\$team/git-commit-name     -t value -v \"\$(git config user.name)\""
echo "credhub set -n /concourse/\$team/aws-access-key      -t value -v \"\$(grep access_key_id     config/private.yml | awk '{print \$2}')\""
echo "credhub set -n /concourse/\$team/aws-secret-key      -t value -v \"\$(grep secret_access_key config/private.yml | awk '{print \$2}')\""
echo "credhub set -n /concourse/\$team/$name/slack-username -t value -v concourse"
echo "credhub set -n /concourse/\$team/$name/slack-icon-url -t value -v https://cl.ly/2F421Y300u07/concourse-logo-blue-transparent.png"
echo
echo "credhub set -n /concourse/\$team/$name/slack-webhook  -t value -v https://slack.com/skip-slack-for-now"
echo "credhub set -n /concourse/\$team/github-access-token -t value -v \"\$(echo \$GITHUB_TOKEN)\""
echo "credhub set -n /concourse/\$team/github-private-key  -t value -v \"\$(cat ~/.ssh/id_rsa)\""
