echo 🍓开始安装 corretto11
brew install corretto11

brew install jenv
jenv add /Library/Java/JavaVirtualMachines/amazon-corretto-11.jdk/Contents/Home
jenv versions
jenv doctor

echo 🍓 java版本
jenv global 11

echo 🍓 安装maven插件
jenv enable-plugin export
# shellcheck disable=SC2093
exec "$SHELL" -l
jenv enable-plugin maven
mvn -v