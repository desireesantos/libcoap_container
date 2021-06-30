# libcoap_container
Docker Container to build an lightweight coap server and client ready to use.

Build Docker Image:
```shell
  docker build .  -t <imagename>
```

Run Image:
```shell
  docker run -i -t -p 5683:5683/udp <imagename>
```

Ready to use:
`127.0.0.1:5683`

This repository was created as [libcoaplibcoap-minimal] 
(https://github.com/coapcloud/libcoap-minimal)
