#### make usb
```
fdisk -l
umount /dev/sdb*
dd -if=<*.iso> -of /dev/sdb 
```

#### add sources of alibaba
```
source:
/etc/apt/sources.list
```

#### add pinyin input
```
pinyin:
apt-get install fcitx
apt-get install fcitx-googlepinyin
reboot
im-config # select fcitx
fcitx-config-gtk3 # add googlepinyin
```

#### copy go packages
```
mkdir -p $GOPATH/src/golang.org/x
git clone https://github.com/golang/tools $GOPATH/src/golang.org/x/tools
git clone https://github.com/golang/crypto $GOPATH/src/golang.org/x/crypto
git clone https://github.com/golang/sys $GOPATH/src/golang.org/x/sys
git clone https://github.com/golang/text $GOPATH/src/golang.org/x/text
git clone https://github.com/golang/image $GOPATH/src/golang.org/x/image
git clone https://github.com/golang/net $GOPATH/src/golang.org/x/net
git clone https://github.com/golang/sync $GOPATH/src/golang.org/x/sync
git clone https://github.com/golang/review $GOPATH/src/golang.org/x/review
git clone https://github.com/golang/mobile $GOPATH/src/golang.org/x/mobile
git clone https://github.com/golang/lint $GOPATH/src/golang.org/x/lint
git clone https://github.com/golang/perf $GOPATH/src/golang.org/x/perf
git clone https://github.com/golang/time $GOPATH/src/golang.org/x/time
```

