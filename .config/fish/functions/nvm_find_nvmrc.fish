# https://github.com/nvm-sh/nvm/blob/da2720a4292d02746a6b7fdc680c7e163c347355/README.md#fish
function nvm_find_nvmrc
  bass source ~/.nvm/nvm.sh --no-use ';' nvm_find_nvmrc
end
