## SSH

```
cd
ssh-keygen -t rsa -b 4096 -C "you@email.com"
eval "$(ssh-agent -s)"
cd .ssh
nvim config
ssh-add -K ~/.ssh/id_rsa
```

`.ssh/config` file as follows:

```
Host *
  AddKeysToAgent yes
  UseKeychain yes
  IdentityFile ~/.ssh/id_rsa
```
