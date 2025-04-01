FROM balenalib/raspberrypi5-64-debian

# Install Chromium and dependencies
RUN apt-get update && apt-get install -y \
    chromium \
    matchbox \
    x11-xserver-utils \
    unclutter \
    && rm -rf /var/lib/apt/lists/*

# Copy start script
COPY start.sh /usr/src/start.sh
RUN chmod +x /usr/src/start.sh

CMD ["/usr/src/start.sh"]
