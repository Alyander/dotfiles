if status is-interactive
    # Commands to run in interactive sessions can go here
   set fish_greeting
   alias v="vim"
   alias nv="nvim"
   set -gx PATH $PATH /home/anatolii/.config/nvim/lsps/lua_ls/bin
end


