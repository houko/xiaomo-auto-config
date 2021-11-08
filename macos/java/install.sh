echo 🍓开始安装 corretto11
brew install corretto11

brew install jenv
jenv add /Library/Java/JavaVirtualMachines/amazon-corretto-11.jdk/Contents/Home
jenv versions
jenv doctor

jenv global 11
eval "$(jenv init -)"

echo 🍓 安装maven插件
brew install maven
mvn -v