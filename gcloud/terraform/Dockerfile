# https://hub.docker.com/r/google/cloud-sdk/tags
FROM google/cloud-sdk

# https://releases.hashicorp.com/terraform/
ENV TERRAFORM_VERSION=0.13.0
ENV TERRAFORM_SHA256SUM=9ed437560faf084c18716e289ea712c784a514bdd7f2796549c735d439dbe378
ENV TERRAFORM_URL=https://releases.hashicorp.com/terraform/${TERRAFORM_VERSION}/terraform_${TERRAFORM_VERSION}_linux_amd64.zip

RUN apt-get update && DEBIAN_FRONTEND=noninteractive apt-get install -y unzip jq

RUN curl -O ${TERRAFORM_URL} && \
    echo "${TERRAFORM_SHA256SUM}  terraform_${TERRAFORM_VERSION}_linux_amd64.zip" > terraform_${TERRAFORM_VERSION}_SHA256SUMS && \
    sha256sum -c --strict terraform_${TERRAFORM_VERSION}_SHA256SUMS && \
    unzip terraform_${TERRAFORM_VERSION}_linux_amd64.zip -d /usr/local/bin && \
    rm terraform_${TERRAFORM_VERSION}_linux_amd64.zip

# https://pypi.org/project/awscli/
RUN pip install awscli==1.18.157

# https://docs.aws.amazon.com/eks/latest/userguide/install-aws-iam-authenticator.html
RUN curl -s -L -o /usr/bin/aws-iam-authenticator https://amazon-eks.s3.us-west-2.amazonaws.com/1.17.9/2020-08-04/bin/linux/amd64/aws-iam-authenticator && \
    chmod +x /usr/bin/aws-iam-authenticator
