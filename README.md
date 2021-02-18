# fish

fish configure.

## Usage

## Requirements

## Installation

### Ubuntu

```bash
sudo apt-add-repository ppa:fish-shell/release-3
sudo apt -y update fish
sudo apt -y install fish
sudo apt -y install peco
curl -sL https://git.io/fisher | source && fisher install jorgebucaran/fisher
```

### EC2

Find fish of rpm file from [fish-shell/fish-shell: The user-friendly command line shell.](https://github.com/fish-shell/fish-shell)

```bash
wget https://download.opensuse.org/repositories/shells:/fish/RHEL_7/x86_64/fish-3.1.2-2.10.x86_64.rpm
sudo yum install fish-3.1.2-2.10.x86_64.rpm
fish --version
# fish, version 3.1.2
```

Find peco of binary file from [Releases · peco/peco](https://github.com/peco/peco/releases/)

```bash
wget https://github.com/peco/peco/releases/download/v0.5.8/peco_linux_amd64.tar.gz
tar xvfz peco_linux_amd64.tar.gz
cd peco_linux_amd64
chmod 100 peco
sudo mv peco /usr/local/bin/
cd ../
rm -r peco_linux_amd64 peco_linux_amd64.tar.gz
peco --version
```

Install fisher

```bash
fish
curl https://git.io/fisher --create-dirs -sLo ~/.config/fish/functions/fisher.fish
fisher --version
fisher install oh-my-fish/theme-bobthefish
fisher install jethrokuan/z
fisher install oh-my-fish/plugin-peco
```

## Other utilities Installation

### ghq

Install go

```bash
wget https://golang.org/dl/go1.16.linux-amd64.tar.gz
sudo tar -C /usr/local -xzf go1.16.linux-amd64.tar.gz
echo "export PATH=$PATH:/usr/local/go/bin" >> .bash_profile

# fish
set -U fish_user_paths /usr/local/bin /usr/sbin /usr/local/go/bin $PATH
```

Build and install ghq

```bash
git clone https://github.com/x-motemen/ghq.git
cd ghq
go install
go build
mkdir -p ~/go/bin
mv ghq ~/go/bin
cd ../
rm -r ghq/
```

Add `~/go/bin` to fish path

```bash
set -U fish_user_paths ~/go/bin $fish_user_paths
```

## License

## Author

## References
