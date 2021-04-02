#Fix_Ngrok2_By_f1gur4nt_Already_Runned
out=$(ps -u $(whoami) | grep tor)

if [[ "$out" != *"tor"* ]]; then
  tor > /dev/null 2>&1 &
fi
