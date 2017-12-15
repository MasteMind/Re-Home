cd /home/mastemind/Workspaces/portForwarding/
/home/mastemind/Workspaces/portForwarding/ngrok tcp 22 -log=stdout > /home/mastemind/Workspaces/portForwarding/ngrok.log &
sleep 20
python printRandomUrl.py > randomLink.out
git add randomLink.out
now=$(date +"%T")
git commit -m 'TIME:'+$(echo $now)
git push -u https://mastemind:sh28461379@github.com/MasteMind/Re-Home.git master
