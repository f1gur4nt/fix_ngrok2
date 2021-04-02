

echo -e "\n"
echo "███████╗██╗██╗  ██╗    ███╗   ██╗ ██████╗ ██████╗  ██████╗ ██╗  ██╗
██╔════╝██║╚██╗██╔╝    ████╗  ██║██╔════╝ ██╔══██╗██╔═══██╗██║ ██╔╝
█████╗  ██║ ╚███╔╝     ██╔██╗ ██║██║  ███╗██████╔╝██║   ██║█████╔╝ 
██╔══╝  ██║ ██╔██╗     ██║╚██╗██║██║   ██║██╔══██╗██║   ██║██╔═██╗ 
██║     ██║██╔╝ ██╗    ██║ ╚████║╚██████╔╝██║  ██║╚██████╔╝██║  ██╗
╚═╝     ╚═╝╚═╝  ╚═╝    ╚═╝  ╚═══╝ ╚═════╝ ╚═╝  ╚═╝ ╚═════╝ ╚═╝  ╚═╝"
echo "                                                    Version 2.0"

InstallDependences () {

command -v apt-get > /dev/null 2>&1 || { echo "[!] I need tor, but its not installed. Please, install it."; exit 1; }

echo "[*] Installing Dependences ..."
apt-get install tor -y
echo "[+] Ok."
}

command -v tor > /dev/null 2>&1 || { InstallDependences; }

echo -e "\n[*] Fixing Ngrok ..."
sleep 3 #Pra nao dizer aih foi rapido d+ isso ai so printa as coisa blablabla

touch $HOME/.bashrc
bashrc=$(cat $HOME/.bashrc)
if [[ $bashrc != *"Fix_Ngrok2_By_f1gur4nt_Already_Runned"* ]]; then
  cat .ngrok.yml >> $HOME/.ngrok2/ngrok.yml
  cat .auto_run_tor.sh >> $HOME/.bashrc
fi

echo -e "[+] Ngrok Fixed as Success ! Please, run ngrok using the follow commands: \n"
echo "ngrok start http"
echo "or"
echo "ngrok start tcp"
echo -e "\n\n(^_^) Bye"
bash
