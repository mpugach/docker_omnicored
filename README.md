# mpugach/omnicored

An [omnicore](https://github.com/OmniLayer/omnicore) docker image.

## Tags


- `v0.5.0-alpine`, `latest` ([v0.5.0-alpine/Dockerfile](https://github.com/mpugach/docker_omnicored/blob/master/v0.5.0-alpine/Dockerfile))
- `v0.3.0-alpine` ([v0.3.0-alpine/Dockerfile](https://github.com/mpugach/docker_omnicored/blob/master/v0.3.0-alpine/Dockerfile))
- `v0.3.0-curl-alpine` ([v0.3.0-curl-alpine/Dockerfile](https://github.com/mpugach/docker_omnicored/blob/master/v0.3.0-curl-alpine/Dockerfile))
- `v0.3.0-unpriv-alpine` ([v0.3.0-unpriv-alpine/Dockerfile](https://github.com/mpugach/docker_omnicored/blob/master/v0.3.0-unpriv-alpine/Dockerfile))
- `v0.3.0-unpriv-curl-alpine` ([v0.3.0-unpriv-curl-alpine/Dockerfile](https://github.com/mpugach/docker_omnicored/blob/master/v0.3.0-unpriv-curl-alpine/Dockerfile))

## Examples

`docker-compose` example:

```yml
version: '3'

services:
  omnicored:
    image: mpugach/omnicored
    volumes:
      - omnicore:/home/bitcoin/.bitcoin
    ports:
      - "18332:18332"
    command: "-server -regtest -txindex -rpcuser=username -rpcpassword=password -rpcallowip=172.0.0.0/8 -printtoconsole"

volumes:
  omnicore:
```

command-line example:

```sh
docker run --rm --name omnicore-server -it mpugach/omnicored \
  -server -regtest -txindex -rpcuser=username \
  -rpcpassword=password -rpcallowip=172.0.0.0/8 \
  -printtoconsole
```
