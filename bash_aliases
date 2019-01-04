# custom shortcut commands 
alias ..="cd .."
alias -- -="cd -"
alias la="ls -al"
alias c='clear'

alias desk="cd ~/Desktop"
alias down="cd ~/Downloads"

alias work="cd ~/work"
alias arbi="cd ~/work/arbisoft"
alias lab="cd ~/work/the-lab"


# git
alias gits='git status'
alias status='git status'

alias gitd='git diff'
alias gitdc='git diff --cached'

alias pull='git pull'
alias checkout='git checkout'
alias branch="git branch"

alias gcommit='git commit -am'
alias amend='git commit -a --amend --no-edit'

# ucsd related
alias scsd='cd ~/work/arbisoft/ucsd/edx/edx-platform/ && source ../../env/bin/activate'
alias ucsd='cd ~/work/arbisoft/ucsd/edx/devstack/ && source ../../env/bin/activate'
alias sucsd='subl ~/work/arbisoft/ucsd/edx/'
alias cucsd='code ~/work/arbisoft/ucsd/edx/'

alias pdev='git checkout develop && git pull'


alias cod4="docker start vibrant_shannon"

alias test_transformers="paver test_system -t openedx/features/caliper_tracking/tests/tests.py::CaliperTransformationTestCase::test_caliper_transformers --fasttest"
