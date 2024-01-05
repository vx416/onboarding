
# https://ohmyz.sh/#install
# https://medium.com/%E6%95%B8%E6%93%9A%E4%B8%8D%E6%AD%A2-not-only-data/macos-%E7%9A%84-terminal-%E5%A4%A7%E6%94%B9%E9%80%A0-iterms-oh-my-zsh-%E5%85%A8%E6%94%BB%E7%95%A5-77d5aae87b10
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# install homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# install gvm https://github.com/moovweb/gvm
bash < <(curl -s -S -L https://raw.githubusercontent.com/moovweb/gvm/master/binscripts/gvm-installer)
brew update

# install kcat https://github.com/edenhill/kcat
brew install kcat

# install kubectl https://kubernetes.io/docs/tasks/tools/install-kubectl/
curl -LO "https://dl.k8s.io/release/$(curl -L -s https://dl.k8s.io/release/stable.txt)/bin/darwin/arm64/kubectl"

# https://k9scli.io/topics/install/ 
brew install derailed/k9s/k9s

# https://dev.mysql.com/doc/refman/8.0/en/programs-client.html
brew install mysql@8.0

# https://www.mongodb.com/docs/v3.0/tutorial/install-mongodb-on-os-x/
brew install mongodb

# https://redis.io/docs/install/install-redis/install-redis-on-mac-os/
brew install redis

# install k6 https://k6.io/docs/get-started/installation/
brew install k6

# https://grpc.io/docs/protoc-installation/
brew install protobuf
# https://grpc.io/docs/languages/go/quickstart/
go install google.golang.org/protobuf/cmd/protoc-gen-go@v1.28
go install google.golang.org/grpc/cmd/protoc-gen-go-grpc@v1.2
# protoc --go_out=. --go_opt=paths=source_relative \
#     --go-grpc_out=. --go-grpc_opt=paths=source_relative \
#     helloworld/helloworld.proto


# https://www.google.com/search?q=htop+&sca_esv=595971146&rlz=1C5CHFA_enTW1091&sxsrf=AM9HkKnR_PUSxvrk9kf8iG6oo6gDqMMt9Q%3A1704465280942&ei=gBOYZaSBOeem2roP7ry5oAU&ved=0ahUKEwikwej8u8aDAxVnk1YBHW5eDlQQ4dUDCBA&uact=5&oq=htop+&gs_lp=Egxnd3Mtd2l6LXNlcnAiBWh0b3AgMgoQIxiABBiKBRgnMgoQIxiABBiKBRgnMgoQABiABBiKBRhDMgUQABiABDIFEAAYgAQyChAAGIAEGIoFGEMyBRAAGIAEMgUQABiABDIFEAAYgAQyBRAAGIAESJYKUMkGWMkGcAJ4AZABAJgBa6ABa6oBAzAuMbgBA8gBAPgBAcICChAAGEcY1gQYsAPiAwQYACBBiAYBkAYK&sclient=gws-wiz-serp
brew install htop
