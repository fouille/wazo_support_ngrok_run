#/bin/sh
#Install and Run Wazo Support
echo "Install Dev SSH Keys"
apt install wazo-dev-ssh-pubkeys wget unzip -y
echo "Download Ngrok to /tmp"
wget https://bin.equinox.io/c/4VmDzA7iaHb/ngrok-stable-linux-amd64.zip -P /tmp
echo "Unzip Ngrok"
unzip /tmp/ngrok-stable-linux-amd64.zip -d /tmp/
echo "Add Key Auth"
/tmp/ngrok authtoken 1Zvun9ECsBZe86W6gm3jIDkERfF_6E3FU8yjaAFPiyvmdcmE2
echo "Run Ngrok for SSH"
/tmp/ngrok tcp 22
