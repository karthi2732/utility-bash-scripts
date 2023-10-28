#!/bin/bash

# $1 - Github Username
# $2 - Github Linked User Email
# $3 - Github Access Token
# $4 - Project Github URL
# $5 - Absolute Path at which the project has to be created in Local System (Optional)

if [ "$1" = "" ];
then
    echo "\nERROR: Missing Argument 1: UserName \n"
    exit 1;
fi

if [ "$2" = "" ];
then
    echo "\nERROR: Missing Argument 2: UserEmail \n"
    exit 1;
fi

if [ "$3" = "" ];
then
    echo "\nERROR: Missing Argument 3: GithubAccessToken \n"
    exit 1;
fi

if [ "$4" = "" ];
then
    echo "\nERROR: Missing Argument 4: Project URL \n"
    exit 1;
fi

PROJECT_PATH=$5;

if [ "$5" = "" ];
then
    PROJECT_PATH=$(find ~/ -name "git-project-setup.sh" | grep -m 1 "git-project-setup.sh" | sed "s/git-project-setup.sh//");
    echo "\nWARN: Missing Argument 5: Project Local Setup Path. \nUsing $PROJECT_PATH for Project Local Setup \n"
fi

ORIGIN_URL=$(echo $4 | sed "s/github.com/$3@github.com/")
PROJECT_NAME=$(echo $4 | rev | cut -d '/' -f 1 | rev | sed "s/.git//" )

PROJECT_PATH=$PROJECT_PATH$PROJECT_NAME;

printf "ProjectPath: $PROJECT_PATH \n\n";

mkdir -p $PROJECT_PATH;
cd $PROJECT_PATH;

git init ;

git remote add origin $ORIGIN_URL;

DEFAULT_BRANCH=$(git remote show origin | grep 'HEAD branch' | tr -d ' ' | cut -d ':' -f 2);

git config user.name $1;
git config user.email $2;

git fetch origin $DEFAULT_BRANCH
git checkout $DEFAULT_BRANCH
