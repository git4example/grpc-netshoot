# grpc-netshoot

```
docker build -t grpc-netshoot .
docker tag grpc-netshoot hello2parikshit/grpc-netshoot
docker push hello2parikshit/grpc-netshoot
```

```
docker run -it hello2parikshit/grpc-netshoot
grpcurl -help
```

OR
```
kubectl run grpc-netshoot --image=hello2parikshit/grpc-netshoot sleep infinity
```

Ref : https://github.com/fullstorydev/grpcurl
