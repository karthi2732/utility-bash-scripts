# utility-bash-scripts
Set of frequently used bash scripts 

### 1. Github Project Setup Script
Since the number of arguments linked to [this git project setup](https://github.com/karthi2732/utility-bash-scripts/blob/main/git-project-setup.sh) script is high, the most frequent way of using this is creating a custom runtime configuration file (rc file) in Local System and sourcing custom rc file from actual rc file ( either `.bashrc` or `.zshrc` file )

#### Sourcing Custom RC File:
```
if [ -f ~/.customrc ]; then
    source ~/.customrc
fi
```

#### Function invoked from Custom RC File: 
```
function personalgit() {
    
    GITHUB_USERNAME=""
    GITHUB_USEREMAIL=""
    GITHUB_ACCESSTOKEN=""

    GITHUB_CLONE_URL=$1
    LOCAL_SETUP_PATH=$2
    SCRIPT_PATH=$(find ~/ -name "git-project-setup.sh"  | grep -m 1 "git-project-setup.sh")

    sh $SCRIPT_PATH $GITHUB_USERNAME $GITHUB_USEREMAIL $GITHUB_ACCESSTOKEN $GITHUB_CLONE_URL $LOCAL_SETUP_PATH

}
```
