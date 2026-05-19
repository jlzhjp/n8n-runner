FROM n8nio/runners:2.22.0
USER root

# Install pyyaml for Python
RUN cd /opt/runners/task-runner-python && uv pip install pyyaml

# Copy custom configuration to allowlist the new packages and stdlib
COPY n8n-task-runners.json /etc/n8n-task-runners.json

USER runner
