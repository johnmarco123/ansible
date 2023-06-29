# Quick setup
### Clone repo and copy paste this:
    ansible-playbook -K --ask-vault-pass local.yml
    
### Currently the following work flawlessly
    ssh
    git-setup
    core-setup
    python-setup
    nvim-setup <--- make sure you go to packer, source it and PackerSync
    dotfiles
    productivity-tools
    lsp-setup

### Currently the following DO NOT work okay:
    node-setup
    npm-packages
