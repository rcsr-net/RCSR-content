# An example script for updating RCSR from its github repository

cd `dirname $0`
cd ..

git remote update &&
if [ `git rev-parse HEAD` != `git rev-parse @{u}` ]
then
    git fetch origin master &&
    git reset --hard FETCH_HEAD &&
    git clean -df &&
    echo "Updated to `git rev-parse HEAD` on `date`" >>log.txt
fi
