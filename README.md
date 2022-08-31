# grpc-netshoot

```
$ docker build -t grpc-netshoot .
$ docker tag grpc-netshoot hello2parikshit/grpc-netshoot
$ docker push hello2parikshit/grpc-netshoot
```

```
$ docker run -it hello2parikshit/grpc-netshoot
grpcurl -help
```
Ref : https://github.com/fullstorydev/grpcurl

OR

When used with : https://github.com/git4example/helloworld-grpc to test grpc helloworld server.
```
$ kubectl run grpc-netshoot --image=hello2parikshit/grpc-netshoot sleep infinity
$ kubectl exec -it grpc-netshoot -- /bin/bash    

$ grpcurl --plaintext grpcserver.grpcserver.svc.cluster.local:9000 list
grpc.reflection.v1alpha.ServerReflection
helloworld.helloworld  
```

```
$ git clone https://github.com/git4example/helloworld-grpc.git
```

Edit `./app/helloworld_client.py` to have your service endpoint like `self.host = 'grpcserver.grpcserver.svc.cluster.local'`

```
python ./app/helloworld_client.py
message: "Hello to gRPC server from client"

message: "Thanks for talking to gRPC server!!! Welcome to hello world. Received message is Hello to gRPC server from client"
received: true
```
