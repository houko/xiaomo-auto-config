brew install jenv
jenv versions

jenv doctor

echo 🍓开始安装 corretto11
brew install corretto11
echo 🍓 java版本
jenv global 11.0.2
java --version
