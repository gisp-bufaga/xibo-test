FROM balenalib/raspberrypi4-64-debian:latest

# Imposta variabili d'ambiente
ENV DISPLAY=:0
ENV DEBIAN_FRONTEND=noninteractive

# Installa i pacchetti necessari
RUN apt-get update && apt-get install -y \
    wget curl sudo xserver-xorg x11-xserver-utils xinit mesa-utils \
    libgles2-mesa libnss3 libxcomposite1 libxcursor1 libxi6 \
    libxrandr2 libxss1 libxtst6 dbus-x11 libasound2 \
    && apt-get clean

# Crea una cartella di lavoro
WORKDIR /opt/xibo

# Scarica il Player Xibo per Linux (se disponibile per ARM)
RUN wget -O xibo-player.tar.gz https://github.com/xibosignage/xibo-linux/ \
    && tar -xvzf xibo-player.tar.gz --strip-components=1

# Rendi eseguibile il player
RUN chmod +x xibo-player

# Copia lo script di avvio
COPY start.sh /start.sh
RUN chmod +x /start.sh

CMD ["/start.sh"]
