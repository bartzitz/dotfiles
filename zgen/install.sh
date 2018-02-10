if [ ! -d "${HOME}/.zgen" ]; then
  git clone https://github.com/tarjoilija/zgen.git "${HOME}/.zgen"
else
  echo "skipped zgen"
fi
