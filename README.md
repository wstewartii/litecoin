# Litecoin

## 1.

### Build docker image

[Dockerfile](https://github.com/wstewartii/litecoin/blob/main/Dockerfile)

```
docker build -t litecoin .
```

## 2.

### Apply statefulset

[statefulset.yaml](https://github.com/wstewartii/litecoin/blob/main/statefulset.yaml)

```
kubectl apply -f statefulset.yaml
```

## 3.

### CI/CD

[.gitlab-ci.yml](https://github.com/wstewartii/litecoin/blob/main/.gitlab-ci.yml)


### Execute gitlab job using local runner

[Install local gitlab runner](https://docs.gitlab.com/runner/install/)

```
gitlab-runner exec docker deploy --docker-volumes /var/run/docker.sock:/var/run/docker.sock
```

## 4.

### Modify the litecoin docker registry in the statefuleset using grep, awk and sed

update the `REPOSITORY_URL` variable in the `.gitlab-ci.yml` and then run [update-registry.sh](https://github.com/wstewartii/litecoin/blob/main/scripts/update-registry.sh)

## 5.

### Modify the litecoin docker registry and tag in the statefulset using python

update the `REPOSITORY_URL` variable in the `.gitlab-ci.yml` and then run [update-registry.py](https://github.com/wstewartii/litecoin/blob/main/scripts/update-registry.py)

## 6.

### Terraform

[Terraform](https://github.com/wstewartii/litecoin/tree/main/terraform)
