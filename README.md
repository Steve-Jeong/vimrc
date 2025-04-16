# Vim Configuration Setup Guide

Follow these steps to set up the Vim configuration from [Steve-Jeong/vimrc](https://github.com/Steve-Jeong/vimrc):

## Installation Steps

1. **Clone the repository**  
   Run this command in your root folder:
   ```bash
   npx degit https://github.com/Steve-Jeong/vimrc.git .
   rm README.md
   ```

   Or, Run this command in your root folder to clone .vimrc file into the vimrc folder:
   ```bash
   git clone https://github.com/Steve-Jeong/vimrc.git vimrc
   cd vimrc
   cp .vimrc ..
   cd ..
   rm -rf vimrc
   ```
   

2. **Launch Vim**  
   Start Vim by running:
   ```bash
   vim
   ```

3. **Install plugins**  
   Inside Vim, execute:
   ```
   :PlugInstall
   ```
   (This will install all the configured plugins)

4. **Restart Vim**  
   Quit Vim with `:q` and relaunch:
   ```bash
   vim
   ```

## Additional Notes

- Make sure you have [Node.js](https://nodejs.org/) installed for `npx` to work
- The configuration uses [vim-plug](https://github.com/junegunn/vim-plug) as plugin manager
- After setup, all plugins should be automatically installed and ready to use

## Troubleshooting

If you encounter any issues:
- Verify your internet connection during `:PlugInstall`
- Check if you have write permissions in the installation directory
- Ensure you have a recent version of Vim (8.0+ recommended)
