# Vim Plug
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'


## Instalacja pluginów
:PlugInstall

## Tagbar
sudo apt install exuberant-ctags
brew install ctags-exuberant

##CoC
Instalacja node-js npm

npm install -g yarn
cd ~/.config/nvim/plugged/coc.nvim
yarn install

Trzeba zrobić `yarn install` w odpowiednim katalogu.
Na macu oczywiście ten katalog nie jest w tym miejscu, gdzie powinien:
.local/share/nvim/plugged

normalnie powinno to siedzieć w 
~/.config/nvim/plugged

Żeby zainstalować plugin trzeba
:CocInstall coc-python
:CocInstall coc-scssmodules
:CocInstall coc-json
:CocInstall coc-yank

## FZF
brew install fzf
$(brew --prefix)/opt/fzf/install
brew install the_silver_searcher
brew install bat

Komenda: fzf

Wyszukiwanie do komendy:
nv ~/Developer/**<Tab>
cd **<Tab> 

##Telescope
brew install ripgrep

# Jak sprawdzić co robi klawisz?
:verbose imap <Tab>

# Czcionki
Żeby NERDTree dobrze działał, trzeba zainstalować czcionki stąd:
https://www.nerdfonts.com/
Menlo cośtam jest spoko


#LSP
npm i -g pyright

# TODO
 - zapisywanie undotree
