FROM ubuntu:22.04

# Install dependencies
RUN apt-get update && apt-get install -y \
    curl \
    iproute2 \
    sshfs \
    unzip \
    less \
    groff

# Install kubectl
RUN curl -LO "https://dl.k8s.io/release/v1.23.6/bin/linux/amd64/kubectl" \
    && install -o root -g root -m 0755 kubectl /usr/local/bin/kubectl \
    && rm kubectl

# Install AWS CLI
RUN curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip" \
    && unzip awscliv2.zip \
    && ./aws/install \
    && rm awscliv2.zip

# Set PATH to include installed tools
ENV PATH="/root/.local/bin:${PATH}"

# Set the working directory
WORKDIR /app

# Add your application files (if needed)
# ADD <source> <destination>

# Set the entrypoint (if needed)
# ENTRYPOINT ["command"]

# Set the default command (if needed)
# CMD ["command"]
