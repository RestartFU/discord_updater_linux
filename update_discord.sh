download_url=$(curl -w "%{redirect_url}" -o /dev/null -s "https://discord.com/api/download?platform=linux&format=tar.gz")
curl -o discord.tar.gz $download_url
tar -xf discord.tar.gz

if [ ! -d Discord/ ]; then
    echo "Directory not found!"
    exit 1
fi

rm -rf ~/.discord
sudo rm -rf /usr/bin/discord
mv Discord ~/.discord

sudo ln -s $(realpath ~/.discord/Discord) /usr/bin/discord

