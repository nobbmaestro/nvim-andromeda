# Andromeda

Oh, are you also searching for neovim port of [Andromeda](https://github.com/EliverLara/Andromeda/tree/master)? Well, look no further!

![](https://media.giphy.com/media/BPJmthQ3YRwD6QqcVD/giphy.gif)

True neovim-adaption of [Andromeda](https://github.com/EliverLara/Andromeda/tree/master) for VSCode!

Built on [nvim-noirbuddy](https://github.com/jesseleite/nvim-noirbuddy) and [colorbuddy.nvim](https://github.com/tjdevries/colorbuddy.nvim), with my personal touch on [Andromeda](https://github.com/EliverLara/Andromeda/tree/master).

![](media/example-py.png)

- [Installation](#installation)
- [Supported plugins](#supported-plugins-as-of-right-now)
- [Thank You](#thank-you)

## Installation

1. Install using your favourite package manager:

    > ***Note:** You'll need to use colorbuddy's `dev` branch for now, but that'll change to `master` in time...*

    **Using [packer.nvim](https://github.com/wbthomason/packer.nvim):**

    ```lua
    use {
      "nobbmaestro/nvim-andromeda",
      requires = { "tjdevries/colorbuddy.nvim", branch = "dev" }
    }
    ```

    **Using [vim-plug](https://github.com/junegunn/vim-plug):**

    ```vim
    Plug 'tjdevries/colorbuddy.nvim', { 'branch': 'dev' }
    Plug 'nobbmaestro/nvim-andromeda'
    ```

2. Enable the colorscheme in your lua config:

    ```lua
    require("andromeda").setup()
    ```

3. Stop procrastinating and go back to coding!

## Supported plugins (as of right now)

- [telescope.nvim](https://github.com/nvim-telescope/telescope.nvim)
- [harpoon](https://github.com/ThePrimeagen/harpoon)

## Customization

To be developed...

## Thank You

- [Jesse Leite](https://twitter.com/jesseleite85) for your amazing work on [nvim-noirbuddy](https://github.com/jesseleite/nvim-noirbuddy). Your repo is what kick-started this very project.

- [TJ DeVries](https://twitter.com/teej_dv) for your incredible work on [colorbuddy.nvim](https://github.com/tjdevries/colorbuddy.nvim). Truly amazing work!
