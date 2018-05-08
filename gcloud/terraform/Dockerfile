FROM google/cloud-sdk

ENV TERRAFORM_VERSION=0.11.7
ENV TERRAFORM_SHA256SUM=6b8ce67647a59b2a3f70199c304abca0ddec0e49fd060944c26f666298e23418
ENV TERRAFORM_URL=https://releases.hashicorp.com/terraform/${TERRAFORM_VERSION}/terraform_${TERRAFORM_VERSION}_linux_amd64.zip

RUN apt-get update && DEBIAN_FRONTEND=noninteractive apt-get install -y unzip

RUN curl -O ${TERRAFORM_URL} && \
    echo "${TERRAFORM_SHA256SUM}  terraform_${TERRAFORM_VERSION}_linux_amd64.zip" > terraform_${TERRAFORM_VERSION}_SHA256SUMS && \
    sha256sum -c --strict terraform_${TERRAFORM_VERSION}_SHA256SUMS && \
    unzip terraform_${TERRAFORM_VERSION}_linux_amd64.zip -d /usr/local/bin && \
    rm terraform_${TERRAFORM_VERSION}_linux_amd64.zip
