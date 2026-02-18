FROM ubuntu:22.04

ENV DEBIAN_FRONTEND=noninteractive
ENV PYTHON_VERSION=3.10

# System tools
RUN apt-get update && apt-get install -y \
    build-essential \
    git \
    curl \
    wget \
    unzip \
    vim \
    nano \
    nfs-common \
    cifs-utils \
    openjdk-17-jdk \
    python3.10 \
    python3-pip \
    r-base \
    libpq-dev \
    libsasl2-dev \
    libssl-dev \
    ca-certificates \
    && rm -rf /var/lib/apt/lists/*

# Create non-root user
RUN useradd -m domino
USER domino
WORKDIR /home/domino

# Python dependencies
COPY requirements.txt .
RUN pip3 install --upgrade pip \
    && pip3 install --no-cache-dir -r requirements.txt

# VSCode Server install
USER root
RUN curl -fsSL https://code-server.dev/install.sh | sh
USER domino

# Copy IDE configs
COPY vscode/settings.json /home/domino/.config/code-server/User/settings.json
COPY vscode/extensions.json /home/domino/extensions.json

# Entrypoint
COPY entrypoint.sh /entrypoint.sh
USER root
RUN chmod +x /entrypoint.sh
USER domino

ENTRYPOINT ["/entrypoint.sh"]
CMD ["python3"]
