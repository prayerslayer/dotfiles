# aliases

# alias python="python3"
# alias pip="pip3"

abbr -a d docker
abbr -a dc docker-compose
abbr -a dcl docker-compose logs --tail=200 -f 

abbr -a awsv aws-vault exec -n default --
abbr -a awsva aws-vault exec -n admin --
abbr -a awsla aws-vault login admin
abbr -a awsl aws-vault login default

abbr -a gia git add
abbr -a gb git branch
abbr -a gco git checkout
abbr -a gcm git commit -m
abbr -a gp git push -u
abbr -a gws git status -u -s
abbr -a gl git log --graph --pretty=oneline --abbrev-commit --decorate=short
abbr -a gm git merge
abbr -a gr git rebase --interactive
abbr -a gsu git submodule update --recursive

abbr -a pr 'hub pull-request'

abbr -a ls ls -GHAa1p
abbr -a cd.. cd ..
abbr -a cd... cd ../..
abbr -a mkdir mkdir -p
abbr -a hex hexdump -e \'16/1 \"%02x\"\'

abbr -a npmt npm test
abbr -a npmw npm test -- --watch
abbr -a mf make fresh
abbr -a how 'cat package.json | jq .scripts'

# environment
set -x AWS_DEFAULT_REGION eu-central-1
set -x CHROME_BIN '/Applications/Google Chrome.app/Contents/MacOS/Google Chrome'

set -x LC_ALL en_US.UTF-8
set -x LANG en_US.UTF-8
set -x SHELL /usr/bin/fish

# PATHs

set -g fish_user_paths "/usr/local/opt/openssl/bin" $fish_user_paths
set -U fish_user_paths /usr/local/bin $fish_user_paths
set -U fish_user_paths /Applications/Visual\ Studio\ Code.app/Contents/Resources/app/bin/ $fish_user_paths


# OPAM configuration
# . /Users/npiccolotto/.opam/opam-init/init.fish > /dev/null 2> /dev/null or true

# The next line updates PATH for the Google Cloud SDK.
# if [ -f '/Users/npiccolotto/Downloads/google-cloud-sdk/path.fish.inc' ]; if type source > /dev/null; source '/Users/npiccolotto/Downloads/google-cloud-sdk/path.fish.inc'; else; . '/Users/npiccolotto/Downloads/google-cloud-sdk/path.fish.inc'; end; end

# git helpers
function b
  set cmd 'git branch --sort=-committerdate | head -n 20 | sort'
  if count $argv > /dev/null
    eval $cmd | grep $argv | xargs -n 1 git checkout
  else
    eval $cmd
  end
end

function branch
  branches | grep $argv | xargs -n 1 git checkout
end

# shell helpers
function echo_color
  printf "\033[0;90m$argv[1]\033[0m\n"
end

echo_color "c-f  Move forward"
echo_color "c-b  Move backward"
echo_color "c-p  Move up"
echo_color "c-n  Move down"
echo_color "c-a  Jump to beginning of line"
echo_color "c-e  Jump to end of line"
echo_color "c-d  Delete right of cursor"
echo_color "c-h  Delete left of cursor"
echo_color "c-k  Delete everything right of cursor"
echo_color "c-u  Delete everything left of cursor"

