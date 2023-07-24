# docker-yenten-core
Yenten coin Docker

**confgigure yenten.conf**
Change default login and pass from file df/yenten.conf
Default rpc login: 2
Default prc pass: 2

Change allow ip from file df/yenten.conf
Default ip 127.0.0.1, 192.168.0.0/16, 172.17.0.0/16


**Run bash script** 

```create_and_run_container.sh```

Create image, create and run container

**Test RPC connect**

```curl --user 2:2 --data-binary '{"jsonrpc": "1.0", "id":"curltest", "method": "getwalletinfo", "params": [] }' -H 'content-type: text/plain;' http://127.0.0.1:9982/```

**Install docker**

```sudo apt install docker docker-compose```

**List running container**

```sudo docker ps```




