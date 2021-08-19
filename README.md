![screen shot](/images/screen-shot.png)

# hisasann's neovim settings

## dotfiles

[hisasann/dotfile: 💻 my dotfiles [vim][tmux][zsh][fish]](https://github.com/hisasann/dotfile)

## Vim setup

[Shougo/dein.vim: Dark powered Vim/Neovim plugin manager](https://github.com/Shougo/dein.vim)

[Shougo/defx.nvim: The dark powered file explorer implementation](https://github.com/Shougo/defx.nvim)

[jiangmiao/auto-pairs: Vim plugin, insert or delete brackets, parens, quotes in pair](https://github.com/jiangmiao/auto-pairs)

[prabirshrestha/vim-lsp: async language server protocol plugin for vim and neovim](https://github.com/prabirshrestha/vim-lsp)

[BurntSushi/ripgrep: ripgrep recursively searches directories for a regex pattern while respecting your gitignore](https://github.com/BurntSushi/ripgrep#installation)

`telescope.nvim` の `grep` 用のコマンド

## Shell setup

[fish shell](https://fishshell.com/)

[jorgebucaran/fisher: A plugin manager for Fish.](https://github.com/jorgebucaran/fisher)

[ryanoasis/nerd-fonts: Iconic font aggregator, collection, & patcher. 3,600+ icons, 50+ patched fonts: Hack, Source Code Pro, more. Glyph collections: Font Awesome, Material Design Icons, Octicons, & more](https://github.com/ryanoasis/nerd-fonts)

[jethrokuan/z: Pure-fish z directory jumping](https://github.com/jethrokuan/z)

[exa · a modern replacement for ls](https://the.exa.website/)

[jesseduffield/lazygit: simple terminal UI for git commands](https://github.com/jesseduffield/lazygit)

[hisasann/ide: tmux の画面分割いい感じにする shell](https://github.com/hisasann/ide)

# neovimをセットアップする

## neovimをインストールする

```bash
$ brew install neovim
```

## neovim v0.5をインストールする

すでに入っている場合は一度アンインストールしてからインストールします。

```
$ brew unlink neovim
$ brew uninstall --force neovim
$ brew install --HEAD neovim
$ brew link neovim
```

Xcode のエラーが出た場合は以下を実行します。

```
$ sudo rm -rf /Library/Developer/CommandLineTools
$ sudo xcode-select --install
```

まだ neovim を入れていない場合はこちら。

```
$ brew install --HEAD neovim
```

### Luaを学ぶ

neovim の設定ファイルを **Lua** で書くことができるようになるので、これを気に勉強していこうと思います。

[nvim-lua-guide-ja/README.ja.md at master · willelz/nvim-lua-guide-ja](https://github.com/willelz/nvim-lua-guide-ja/blob/master/README.ja.md)

## neovimのバージョンを確認する

```bash
$ nvim -v
```

## neovimの設定ファイルを配置する

以下のディレクトリがなければ作成します。

```bash
$ mkdir ~/.config/nvim
```

[hisasann/neovim](https://github.com/hisasann/neovim) を clone したディレクトリに移動した以下を実行します。

```bash
$ ln -fs "$PWD/init.vim" ~/.config/nvim/init.vim
$ ln -fs "$PWD/dein.toml" ~/.config/nvim/dein.toml
$ ln -fs "$PWD/dein_lazy.toml" ~/.config/nvim/dein_lazy.toml
```

## python3をインストールする

[Shougo/deoplete.nvim: Dark powered asynchronous completion framework for neovim/Vim8](https://github.com/Shougo/deoplete.nvim)

は python3 が必要になるので、ここでインストールしておきます。

    [deoplete] deoplete requires Python3 support("+python3").

```bash
$ brew install python3
$ pip3 install -U neovim
```

もし、エラーが出てしまった場合は、エラー内容を解消し、以下を nvim に打ち込みます。

    :UpdateRemotePlugins

## dein.vimをインストールする

```bash
$ curl https://raw.githubusercontent.com/Shougo/dein.vim/master/bin/installer.sh > installer.sh
# For example, we just use `~/.cache/dein` as installation directory
$ sh ./installer.sh ~/.cache/dein
```

## dein.vimのキャッシュをクリアする

```
:call dein#recache_runtimepath()
```

## dein.vimでモジュールたちをインストールする

```
:call dein#install()
```

## nvim-lspconfigで型チェック


### Built-in commands

* `:LspInfo` shows the status of active and configured language servers.

The following support tab-completion for all arguments:

* `:LspStart <config_name>` Start the requested server name. Will only succesfully start if the command detects a root directory matching the current config. Pass `autostart = false` to your `.setup{}` call for a language server if you would like to launch clients solely with this command. Defaults to all servers matching current buffer filetype.
* `:LspStop <client_id>` Defaults to stopping all buffer clients.
* `:LspRestart <client_id>` Defaults to restarting all buffer clients.

[neovim/nvim-lspconfig: Quickstart configurations for the Nvim LSP client](https://github.com/neovim/nvim-lspconfig)

### lspsaga.nvim

coc.nvim ではできなかった Floating Window などを出すことができるので便利です。

[glepnir/lspsaga.nvim: neovim lsp plugin](https://github.com/glepnir/lspsaga.nvim)

### TypeScriptの型チェックをするために必要なこと

`typescript typescript-language-server` がグローバルにインストールされていないと

```
client 1 quit with exit code 126 and signal 0
```

のようなエラーメッセージがステータスバーに出てしまうのでインストールします。

```
npm i -g typescript typescript-language-server
```

[theia-ide/typescript-language-server: TypeScript & JavaScript Language Server](https://github.com/theia-ide/typescript-language-server)

## 参考記事

[Neovimのセットアップ方法(Mac) - Qiita](https://qiita.com/uhooi/items/8a023c24c004ec0c8b84)

[はじめてのNeoVim（初期設定編） - Qiita](https://qiita.com/hisayuki/items/99ea1b667de71e908891)

[MacでNeovimをPythonの開発環境にする](https://python.ms/neovim/)

## defx.vim参考記事

defx.vim 公式の設定たちよ

[defx.nvim/defx.txt at master · Shougo/defx.nvim](https://github.com/Shougo/defx.nvim/blob/master/doc/defx.txt)

[Defx.nvim を使う! | 完成形で未完成](https://tech.39.gy/terminal/defx/)

[【Vim】defx.nvimで高速でリッチなファイラを実現する(アイコン、git status表示) - Qiita](https://qiita.com/arks22/items/9688ec7f4cb43444e9d9)

[defxを使ってみる - 環境構築・零](https://takkii.hatenablog.com/entry/2018/08/19/133847)

[【vim】defx.nvimを設定！defx-git！defx-icon！](https://castleobj.com/defx/)
