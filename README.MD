## gitlab-ci docker build

1. vi /etc/gitlab-runner/config.toml

````
[[runners]]
  name = "Angristan's Docker Runner"
  url = "https://gitlab.com/"
  token = "xxxxxxxxxxxxxxxxxxxxxx"
  executor = "docker"
  [runners.docker]
    tls_verify = false
    image = "docker:stable"
    privileged = false
    disable_cache = false
    volumes = ["/var/run/docker.sock:/var/run/docker.sock", "/cache"]
    shm_size = 0
  [runners.cache]
````

2. privileged = false -> true 

3. run gitlab runner