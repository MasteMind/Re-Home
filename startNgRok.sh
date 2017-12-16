
if pgrep ngrok; then echo "ALready Running!"; else
cd /home/mastemind/Workspaces/portForwarding/;
echo "Printing th working directory!";
pwd;

./ngrok start --all -config=/home/mastemind/.ngrok2/ngrok.yml -log=stdout>ngrok.log &

sleep 20;
python printRandomUrl.py > randomLink.out;

git config --global user.email "mehranramiz93@gmail.com";
git config --global user.name "mastemind";

git add -A;
now=$(date +"%T");
git commit -m 'TIME:'+$(echo $now);
git push -u https://mastemind:sh28461379@github.com/MasteMind/Re-Home.git master;
fi
