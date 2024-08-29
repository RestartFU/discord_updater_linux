rm -rf ~/.discord

download_url=$(curl -w "%{redirect_url}" -o /dev/null -s "https://discord.com/api/download?platform=linux&format=tar.gz")
curl -o discord.tar.gz $download_url
tar -xf discord.tar.gz
mv Discord ~/.discord

sudo ln -s $(realpath ~/.discord/Discord) /usr/bin/discord

