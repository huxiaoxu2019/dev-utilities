#!/bin/sh
# from https://blog.csdn.net/haoaiqian/article/details/87168322
git filter-branch --env-filter '
OLD_EMAIL="admin@ihuxu.com"
CORRECT_NAME="huxiaoxu2019"
CORRECT_EMAIL="admin@ihuxu.com"
if [ "$GIT_COMMITTER_EMAIL" = "$OLD_EMAIL" ]
then
    export GIT_COMMITTER_NAME="$CORRECT_NAME"
    export GIT_COMMITTER_EMAIL="$CORRECT_EMAIL"
fi
if [ "$GIT_AUTHOR_EMAIL" = "$OLD_EMAIL" ]
then
    export GIT_AUTHOR_NAME="$CORRECT_NAME"
    export GIT_AUTHOR_EMAIL="$CORRECT_EMAIL"
fi
' --tag-name-filter cat -- --branches --tags

