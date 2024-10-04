set fish_greeting # disable greeting

# Note: fish_user_paths gets *pretended* to the global PATH, but nvm's PATH manipulations need to stay
# *before* homebrew so we pick up nvm node.
set --export --global PATH "/opt/homebrew/sbin:/opt/homebrew/bin:$PATH"

if status is-interactive
    # Commands to run in interactive sessions can go here

    abbr g git
    abbr p pnpm
    abbr t pnpm turbo

    zoxide init fish | source

    # https://github.com/nvm-sh/nvm/blob/da2720a4292d02746a6b7fdc680c7e163c347355/README.md#fish
    load_nvm > /dev/stderr
end
