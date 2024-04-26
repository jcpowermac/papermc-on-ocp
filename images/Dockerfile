FROM registry.access.redhat.com/ubi9/openjdk-21:1.18-1

USER root
RUN microdnf install jq -y

USER 185
RUN VERSION=$(curl -s https://api.papermc.io/v2/projects/paper | jq -r '.versions | last') && \
    NAME=$(curl -s https://api.papermc.io/v2/projects/paper/versions/$VERSION/builds | jq -r '.builds | map(select(.channel == "default")) | last | .downloads.application.name') && \
    BUILD=$(curl -s https://api.papermc.io/v2/projects/paper/versions/$VERSION/builds | jq -r '.builds | map(select(.channel == "default")) | last | .build') && \
    curl https://api.papermc.io/v2/projects/paper/versions/$VERSION/builds/$BUILD/downloads/$NAME --output /deployments/paper.jar

RUN VERSION=$(curl -s https://api.papermc.io/v2/projects/velocity| jq -r '.versions | last') && \
    NAME=$(curl -s https://api.papermc.io/v2/projects/velocity/versions/$VERSION/builds | jq -r '.builds |  map(select(.channel == "default")) | last | .downloads.application.name') && \
    BUILD=$(curl -s https://api.papermc.io/v2/projects/velocity/versions/$VERSION/builds | jq -r '.builds |  map(select(.channel == "default")) | last | .build') && \
    curl https://api.papermc.io/v2/projects/velocity/versions/$VERSION/builds/$BUILD/downloads/$NAME --output /deployments/velocity.jar


COPY eula.txt /deployments
COPY eula.txt /deployments/data

