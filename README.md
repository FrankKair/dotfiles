## Dotfiles

.gitconfig, .vimrc, .zshrc and a bootstrap script to install apps and tools.


Symlinking `ln path_to_repo/dotfiles/config/nvim/init.vim .config/nvim/init.vim`

```sh
w ! !ocamlfind ocamlc -package base,stdio -linkpkg -o %< % && ./%< && rm %< %<.cm*
```
