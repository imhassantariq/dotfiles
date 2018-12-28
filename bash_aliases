# custom shortcut commands 
alias ..="cd .."
alias -- -="cd -"
alias lsa="ls -al"
alias c='clear'

alias desk="cd ~/Desktop"
alias down="cd ~/Downloads"
alias arbi="cd ~/work/arbisoft"


# git
alias gits='git status'
alias pull='git pull'
alias checkout='git checkout'
alias pull="git pull"
alias branch="git branch"

# ucsd related
alias scsd='cd ~/work/arbisoft/ucsd/edx/edx-platform/ && source ../../env/bin/activate'
alias ucsd='cd ~/work/arbisoft/ucsd/edx/devstack/ && source ../../env/bin/activate'
alias sucsd='subl ~/work/arbisoft/ucsd/edx/'
alias cucsd='code ~/work/arbisoft/ucsd/edx/'


alias cod4="docker start vibrant_shannon"

alias test_transformers="paver test_system -t openedx/features/caliper_tracking/tests/tests.py::CaliperTransformationTestCase::test_caliper_transformers --fasttest"
