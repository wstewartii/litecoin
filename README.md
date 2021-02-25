# litecoin

Build docker image

```
docker build -t litecoin .
```

Apply statefulset

```
kubectl apply -f statefulset
```

Execute gitlab job using local runner

```
gitlab-runner exec docker deploy --docker-volumes /var/run/docker.sock:/var/run/docker.sock
```
