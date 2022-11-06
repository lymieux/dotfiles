function fish_prompt
    set -l suffix "%"
    if fish_is_root_user
        set suffix "#"
    end
    # 50fa7b from dracula color scheme
    echo -n -s (set_color $fish_color_operator) (prompt_pwd) ' ' $suffix (set_color normal) ' '
end
