```bash
# Install iTerm2
# https://iterm2.com/

# Make easy to edit the command
# Preferences > Profiles > Keys > Key Mappings > Presets...
# Choose "Natural Text Editing"

# Install Oh My Zsh (https://ohmyz.sh/#install)
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# Install some plugins
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting

# Copy and paste the "oh-my-zsh/.zshrc" file to ~/.zshrc
```
