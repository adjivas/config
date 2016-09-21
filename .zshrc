if [[ "$SHLVL" == "1" ]]; then
  source $PWD/.zshrc.osa.$(uname)
  source $PWD/.zshrc.apple.$(uname)
  source $PWD/.zshrc.env.$(uname)
  source $PWD/.zshrc.prompt.$(uname)
  source $PWD/.zshrc.rc.$(uname)
fi
