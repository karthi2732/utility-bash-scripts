# utility-bash-scripts
Set of frequently used bash scripts 

- [git_project_setup.sh](#github-project-setup-script)
- [mac_docker_setup.sh](mac_docker_setup.sh)

### Github Project Setup Script
**Script:** [git_project_setup.sh](git_project_setup.sh)

Since the number of arguments linked to this script is high, the most frequent way of using this is creating a custom runtime configuration file (rc file) in Local System and sourcing custom rc file from actual rc file ( either `.bashrc` or `.zshrc` file )

#### Sourcing Custom RC File
```
if [ -f ~/.customrc ]; then
    source ~/.customrc
fi
```

#### Function invoked from Custom RC File
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

### Mac Docker Setup

**Script:** [mac_docker_setup.sh](mac_docker_setup.sh)

Script File to set-up docker environment in MacOS without `Docker Desktop`
This script using `lima` VM for docker context

#### Colima Commands
```
colima start;
```
```
colima stop;
```
