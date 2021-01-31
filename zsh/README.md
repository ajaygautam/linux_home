Get this into workspace/linux_home

1. Install recommended font... yes really! https://github.com/romkatv/powerlevel10k#meslo-nerd-font-patched-for-powerlevel10k
1. Set Font as default in Apple Terminal
1. Install ohmyzsh: `sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"`
1. Add to ~/.zshrc at the bottom: `source $HOME/workspace/linux_home/zsh/zshrc.sh`
1. Install: https://github.com/romkatv/powerlevel10k
1. Restart terminal. If needed: configure: `p10k configure`

If you still have the Mac USB keyboard... add this to .zshrc
See https://github.com/romkatv/powerlevel10k/issues/1163 for details.
```
() {
  local keymap
  for keymap in emacs viins vicmd; do
    bindkey -M $keymap -s '^[OM' '^M'  # enter
    bindkey -M $keymap -s '^[Om' '-' 
    bindkey -M $keymap -s '^[Oj' '*' 
    bindkey -M $keymap -s '^[Oo' '/' 
    bindkey -M $keymap -s '^[OX' '=' 

    bindkey -M $keymap -s '^[Ol' '+' 
    bindkey -M $keymap -s '^[Ow' '7' 
    bindkey -M $keymap -s '^[Ox' '8' 
    bindkey -M $keymap -s '^[Oy' '9' 
    bindkey -M $keymap -s '^[Ot' '4' 
    bindkey -M $keymap -s '^[Ou' '5' 
    bindkey -M $keymap -s '^[Ov' '6' 
    bindkey -M $keymap -s '^[Oq' '1' 
    bindkey -M $keymap -s '^[Or' '2' 
    bindkey -M $keymap -s '^[Os' '3' 
    bindkey -M $keymap -s '^[Op' '0' 
    bindkey -M $keymap -s '^[On' '.' 
  done
}
```
