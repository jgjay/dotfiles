alias gpg=gpg2

[ -f ~/.gpg-agent-info ] && source ~/.gpg-agent-info

if [ -S "${GPG_AGENT_INFO%%:*}" ]; then
  export GPG_AGENT_INFO
else
  eval $(gpg-agent --daemon --enable-ssh-support --write-env-file ~/.gpg-agent-info)
fi
