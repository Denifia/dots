# README

## Windows Requirements

### Tools

In Visual Studio Installer you need:
- C++ CMake tools for Windows

```ps
# zip: programming language with compiler
winget install zig.zig

# cmake: a C compiler
winget install cmake

# ripgrep: a rust version of grep because it's faster
winget install BurntSushi.ripgrep.MSVC

# fd: a rust version of find because it's faster
winget install sharkdp.fd
```

### Fonts

Go grab a [Nerd Font](https://www.nerdfonts.com/font-downloads) and make sure it has all the cool icons and such. e.g. [CascadiaCode](https://github.com/ryanoasis/nerd-fonts/releases/download/v3.3.0/CascadiaCode.zip)

### Clone this repo

```ps
cd $env:LOCALAPPDATA
# If you already have a nvim folder here, backup/rename it first
git clone -b nvim https://github.com/Denifia/dots.git nvim
```

