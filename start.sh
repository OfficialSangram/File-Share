if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/OfficialSangram/File-Share /File-Share
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /File-Share
fi
cd /File-Share
pip3 install -U -r requirements.txt
echo "Bot Started...."
python3 bot.py
