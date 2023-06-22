docker kill nri-va2pt
docker rm nri-va2pt
docker build -t nri-va2pt .
docker run \
    -d \
    --name newrelic-infra \
    --net=newrelic_default \
    --cap-add=SYS_PTRACE \
    -v "/:/host:ro" \
    -v "/var/run/docker.sock:/var/run/docker.sock" \
    nri-va2pt

