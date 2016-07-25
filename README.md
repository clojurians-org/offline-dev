# clojure offline development guide
## the following component is included:
- jdk-1.8     [http://www.oracle.com/technetwork/java/javase/downloads/index.html]
- lein-2.6    [http://leiningen.org/]
- emacs-24.5  [http://www.gnu.org/software/emacs/emacs.html]
- prelude     [http://batsov.com/prelude]
- cider       [https://cider.readthedocs.io/en/latest/installation/]
- paredit     [http://mumble.net/~campbell/emacs/]
- common jar  [refer to /.clojurians-org/workspaces/repo-download/project.clj]

## the current project include the component package already:
- [lein-2.6] => lein + leiningen-2.6.1-standalone.jar
- [prelude cider paredit] => under .emacs.d directory

## see the follwing guide for more details:

```sh
;********************************
;* prepare
;********************************
  sudo apt-get install unzip
  sudo apt-get install libncurses-dev

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
  sudo apt-get update
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
  mkdir -p $HOME/.clojurians-org/{installer,bin} $HOME/.lein
  if [ ! -e $HOME/.clojurians-org/installer/offline-dev-master.zip ]; then wget -c -O $HOME/.clojurians-org/installer/offline-dev-master.zip https://codeload.github.com/clojurians-org/offline-dev/zip/master; fi
  cd $HOME/.clojurians-org/installer && unzip offline-dev-master.zip
  cp -r $HOME/.clojurians-org/installer/offline-dev-master/.lein  $HOME
  cp -r $HOME/.clojurians-org/installer/offline-dev-master/.clojurians-org $HOME
  rm -rf $HOME/.clojurians-org/installer/offline-dev-master
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

;********************************
;* emacs package[prelude cider paredit]
;********************************
;----------------
; bash
;----------------
  mkdir -p $HOME/.clojurians-org/installer
  if [ ! -e $HOME/.clojurians-org/installer/offline-dev-master.zip ]; then wget -c -O $HOME/.clojurians-org/installer/offline-dev-master.zip https://codeload.github.com/clojurians-org/offline-dev/zip/master; fi
  cd $HOME/.clojurians-org/installer && unzip offline-dev-master.zip
  cp -r $HOME/.clojurians-org/installer/offline-dev-master/.emacs.d $HOME
  rm -rf $HOME/.clojurians-org/installer/offline-dev-master
;----------------
; emacs package
;----------------
  curl -L https://git.io/epre | sh
  M-x: package-install cider
  M-x: package-install paredit
;----------------

;********************************
;* clojure jar
;********************************
;----------------
; bash
;----------------
  mkdir -p $HOME/.clojurians-org/workspaces
  if [ ! -e $HOME/.clojurians-org/installer/offline-dev-master.zip ]; then wget -c -O $HOME/.clojurians-org/installer/offline-dev-master.zip https://codeload.github.com/clojurians-org/offline-dev/zip/master; fi
  cd $HOME/.clojurians-org/installer && unzip offline-dev-master.zip
  cp -r $HOME/.clojurians-org/installer/offline-dev-master/.clojurians-org $HOME
  rm -rf $HOME/.clojurians-org/installer/offline-dev-master
  cd $HOME/.clojurians-org/workspaces/repo-download && lein deps ;# =>  $HOME/.m2
;----------------
```
