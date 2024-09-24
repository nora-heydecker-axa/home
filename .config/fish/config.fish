set fish_greeting # disable greeting

if status is-interactive
    # Commands to run in interactive sessions can go here

   abbr g git

   zoxide init fish | source
end
