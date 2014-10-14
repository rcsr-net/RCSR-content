# An example script for updating RCSR from its github repository

cd `dirname $0`
cd ..

git remote update &&
if [ `git rev-parse HEAD` != `git rev-parse @{u}` ]
then
    echo 'we need to update'
fi
