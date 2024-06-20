# Neovim Config

This is my neovim config. This will always be in a state of flux, however; I am trying to limit the amount of updates that I do to this repo.

The base of this project was formed using theprimagens initial YouTube tutorial (Zero to LSP) and has since been adapted to add a few extra convinineces such as:

- Some React/TypeScript snippets
- Better Comments (for comment highlighting) 
- Extra Languages servers (using LSP zero) to fit my needs 

## Note 

If you are new like I was, when cloning this repo it will break neovim because Packer trys to run the `after` folder
before any of the dependencies are installed. So ensure you have packer installed, then rename the after folder to something like `_after`.

This is to ensure it is not run on initial setup. Then call `:PackerSync` to install said the dependencies and you should be good to go 

Make sure to change `_after` back to `after`.

There again **you probably shouldn't use this repo to set your self up**. 

Instead use something like [kickstart.nvim](https://github.com/nvim-lua/kickstart.nvim) or ThePrimagens tutorial [Zero to LSP](https://www.youtube.com/watch?v=w7i4amO_zaE&t=438s) - Although the latter is maybe not so great for actually learning, just following along. 

## CLI Dependencies  

- `wget` (for Mason) 
- `unzip` (for Mason) 
- `Packer` (Package Management) 


