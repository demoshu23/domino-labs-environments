#!/bin/bash
set -e

# Mount NFS
if [ ! -z "$NFS_SERVER" ]; then
  sudo mount -t nfs ${NFS_SERVER}:/ /mnt/nfs
fi

# Start VSCode server
code-server --bind-addr 0.0.0.0:8080 &

exec "$@"
