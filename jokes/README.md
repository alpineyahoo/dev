# jokes
A list of joke commands that can be executed instantly

## Prerequisites
```shell
brew install gum
```

## Usage
```shell
curl -sL "https://raw.githubusercontent.com/alpineyahoo/dev/main/jokes/run.sh" | zsh
```

## Install
```shell
# Example below is assuming that ~/bin is in your $PATH
curl -sL "https://raw.githubusercontent.com/alpineyahoo/dev/main/jokes/run.sh" >> ~/bin/jokes
chmod 700 ~/bin/jokes

# or simply
echo "alias jokes='curl -sL https://raw.githubusercontent.com/alpineyahoo/dev/main/jokes/run.sh | zsh'" >> ~/.zshrc
```
