workflow "Docker build" {
  on = "push"
  resolves = ["push"]
}

action "login" {
  uses = "actions/docker/login@86ab5e854a74b50b7ed798a94d9b8ce175d8ba19"
  secrets = ["DOCKER_USERNAME", "DOCKER_PASSWORD"]
}

action "build" {
  uses = "actions/docker/cli@86ab5e854a74b50b7ed798a94d9b8ce175d8ba19"
  args = "build -t pintia/actions-aliyun-ossutil:latest"
  needs = ["login"]
}

action "push" {
  uses = "actions/docker/cli@86ab5e854a74b50b7ed798a94d9b8ce175d8ba19"
  needs = ["build"]
  args = "push pintia/actions-aliyun-ossutil:latest"
}
