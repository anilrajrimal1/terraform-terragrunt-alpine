FROM alpine:latest

# Install dependencies
RUN apk add --no-cache \
    curl \
    bash \
    unzip \
    ca-certificates

# Install Terraform v1.9.5
RUN curl -LO https://releases.hashicorp.com/terraform/1.9.5/terraform_1.9.5_linux_amd64.zip \
    && unzip terraform_1.9.5_linux_amd64.zip \
    && mv terraform /usr/local/bin/terraform \
    && rm terraform_1.9.5_linux_amd64.zip \
    && terraform --version

# Install Terragrunt v0.77.22 (last stable before 0.78 CLI breaking changes)
RUN curl -Lo /usr/local/bin/terragrunt https://github.com/gruntwork-io/terragrunt/releases/download/v0.77.22/terragrunt_linux_amd64 \
    && chmod +x /usr/local/bin/terragrunt \
    && terragrunt --version

WORKDIR /workspace
CMD ["bash"]
