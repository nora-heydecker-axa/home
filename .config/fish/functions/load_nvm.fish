# https://github.com/nvm-sh/nvm/blob/da2720a4292d02746a6b7fdc680c7e163c347355/README.md#fish
function load_nvm --on-variable="PWD"
  set -l node_version $current_node_version
  set -l nvmrc_path (nvm_find_nvmrc)

  if test -n "$nvmrc_path"
    set -l nvmrc_node_version (nvm version (cat $nvmrc_path))
    if test "$nvmrc_node_version" = "N/A"
      nvm install (cat $nvmrc_path)
    else if test "$nvmrc_node_version" != "$node_version"
      nvm use $nvmrc_node_version
      set --export --global current_node_version (nvm version)
    end
    return
  end

  set -l default_node_version (nvm version default)
  if test "$node_version" != "$default_node_version"
    echo "Reverting to default Node version"
    nvm use default
    set --export --global current_node_version (nvm version)
  end

  if test -z $current_node_version
    set --export --global current_node_version (nvm version)
  end
end
