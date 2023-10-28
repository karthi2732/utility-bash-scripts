# This program is to install and setup docker environment without docker desktop in MacOS
# Using `minikube` & `hyperkit` is the most common way to have docker setup without docker desktop
# But there were few issues in hyperkit and the VM is not able pull any images from registry
# Hence in this script `colima` VM is used and docker env is set-up

## installing docker & related packages ##

brew install docker;

brew install docker-compose;

brew install docker docker-credential-helper;

## set colima as docker context

echo '{
        "auths": {},
        "credsStore": "osxkeychain",
        "currentContext": "colima"
}' > ~/.docker/config.json;


# install colima VM

brew install colima;

# Start colima VM

colima start;


# Now all docker commands will work
# `colima start` - starts colima VM
# `colima stop` - stop colima VM

