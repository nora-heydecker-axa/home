set fish_greeting # disable greeting

# Note: fish_user_paths gets *pretended* to the global PATH, but nvm's PATH manipulations need to stay
# *before* homebrew so we pick up nvm node.
set --export --global PATH "/opt/homebrew/sbin:/opt/homebrew/bin:$PATH"

export APOLLO_ELV2_LICENSE=accept

if status is-interactive
    # Commands to run in interactive sessions can go here

    abbr g git
    abbr p pnpm
    abbr t pnpm turbo

    abbr acc1 "git checkout acc1 && git hu"
    abbr acc2 "git checkout acc2 && git hu"
    abbr dev2 "git checkout dev2 && git hu"
    abbr develop "git fetch && git checkout origin/develop"

    zoxide init fish | source

    fnm env --use-on-cd --shell fish | source
end
