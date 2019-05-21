workflow "Create Pull Request" {
  on = "push"
  resolves = "Create New Pull Request"
}

action "Create New Pull Request" {
  uses = "vsoch/pull-request-action@master"
  secrets = [
    "GITHUB_TOKEN"
  ]
  env = {
    PULL_REQUEST_BRANCH = "master"
    PULL_REQUEST_DRAFT = "true"
    PULL_REQUEST_TITLE = "This is the title of the PR"
    PULL_REQUEST_BODY = "This is the body of the PR"
  }
}
