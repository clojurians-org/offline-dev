# clojure offline development guide  
## the following component is included:  
- jdk-1.8
- lein-2.6
- emacs-24.5
- prelude
- cider
- paredit

## the current project include the component package already:
- lein-2.6: lein + leiningen-2.6.1-standalone.jar

## see the follwing guide for more details:

```sh
;********************************
;* jdk 8
;********************************
;----------------
; bash
;----------------
  mkdir -p $HOME/.clojurians-org/opt
  wget -c -O $HOME/.clojurians-org/opt/jdk-8u92-linux-x64.tar.gz --no-check-certificate --no-cookies --header "Cookie: oraclelicense=accept-securebackup-cookie" http://download.oracle.com/otn-pub/java/jdk/8u92-b14/jdk-8u92-linux-x64.tar.gz
  cd $HOME/.clojurians-org/opt && tar -xvf jdk-8u92-linux-x64.tar.gz
  export JAVA_HOME=$HOME/.clojurians-org/opt/jdk1.8.0_92
  export PATH=$JAVA_HOME/bin:$PATH
;----------------
; ubuntu
;----------------
  sudo add-apt-repository ppa:webupd8team/java
  sudo apt-get install oracle-java8-installer
  sudo apt-get install oracle-java8-set-default
;----------------
;----------------
; mac os
;----------------
  brew cask install java 
;----------------

;********************************
;* leiningen 2.6.1
;********************************
;----------------
; lein[bash]
;----------------
  mkdir -p $HOME/.lein/self-installs $HOME/.clojurians-org/bin
  #wget -c -O $HOME/.lein/self-installs/leiningen-2.6.1-standalone.jar https://github.com/technomancy/leiningen/releases/download/2.6.1/leiningen-2.6.1-standalone.zip
   wget -c -O $HOME/.lein/self-installs/leiningen-2.6.1-standalone.jar https://raw.githubusercontent.com/clojurians-org/offline-dev/master/.lein/self-installs/leiningen-2.6.1-standalone.jar
  #wget -c -O $HOME/.clojurians-org/bin/lein https://raw.githubusercontent.com/technomancy/leiningen/stable/bin/lein
   wget -c -O $HOME/.clojurians-org/bin/lein https://raw.githubusercontent.com/clojurians-org/offline-dev/master/.clojurians-org/bin/lein
  chmod +x $HOME/.clojurians-org/bin/lein
  export PATH=$HOME/.clojurians-org/bin:$PATH
;----------------
;----------------
; ubuntu
;----------------
  sudo apt-get install leiningen
;----------------
;----------------
; mac os
;----------------
  brew install leiningen
;----------------

;********************************
;* emacs 24.5
;********************************
;----------------
; [bin].tar.gz
;----------------
  mkdir -p $HOME/.clojurians-org/{installer,bin,opt/emacs}
  wget -c -O $HOME/.clojurians-org/installer/emacs-24.5.tar.gz http://mirror.hust.edu.cn/gnu/emacs/emacs-24.5.tar.gz
  cd $HOME/.clojurians-org/installer && tar -xvf $HOME/.clojurians-org/installer/emacs-24.5.tar.gz 
  cd $HOME/.clojurians-org/installer/emacs-24.5
  ./configure --prefix=$HOME/.clojurians-org/opt/emacs-24.5 --bindir=$HOME/.clojurians-org/bin --without-x
  make && make install
  export PATH=$HOME/.clojurians-org/bin:$PATH
;----------------
;----------------
; ubuntu
;----------------
  sudo apt-add-repository ppa:ubuntu-elisp/ppa
  sudo apt-get install emacs-snapshot emacs-snapshot-el
;----------------
;----------------
; mac os
;----------------
  brew install emacs
;----------------
```
