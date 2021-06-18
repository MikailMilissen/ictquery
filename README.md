
# How to connect with Master Project on Github by branch
Cd desktop
Clone:    
(I should fork from MikailMilissen, and clone from mine)
git clone https://github.com/MikailMilissen/ictquery.git

To check status:  
git remote -v 
>origin	https://github.com/MikailMilissen/ictquery.git (fetch)
>origin	https://github.com/MikailMilissen/ictquery.git (push)

git remote add upstream https://github.com/MikailMilissen/ictquery.git


git checkout master
git fetch upstream
>From https://github.com/MikailMilissen/ictquery
 * [new branch]        elnura15ae-updatedbyme -> upstream/elnura15ae-updatedbyme
 * [new branch]        master                 -> upstream/master

git merge upstream/master
>Already up to date. Or…

To create branch for each updates:


git checkout -b update_readmeRAIL
>Switched to a new branch ‘update_readme'

git add .
git commit -m 'update readme’
>>[update_readme 1ba2c587] update readme
 1 file changed, 3 insertions(+), 1 deletion(-)

git push origin update_readme

>Enumerating objects: 5, done.
Counting objects: 100% (5/5), done.
Delta compression using up to 8 threads
Compressing objects: 100% (3/3), done.
Writing objects: 100% (3/3), 302 bytes | 302.00 KiB/s, done.
Total 3 (delta 2), reused 0 (delta 0), pack-reused 0
remote: Resolving deltas: 100% (2/2), completed with 2 local objects.
remote: 
remote: Create a pull request for 'update_readme' on GitHub by visiting:
remote:      https://github.com/MikailMilissen/ictquery/pull/new/update_readme
remote: 
To https://github.com/MikailMilissen/ictquery.git
 * [new branch]        update_readme -> update_readme




Before make any changes you have to synchronize your local repository, 
don't use PULL !
First I should from my repository click fetch upstream, then: 

git checkout master -> Select master branch
git fetch upstream -> Linked to online repository
git merge upstream/master -> Merge repository local and online

========================================================================

To update your changes to the online repository, don't use PUSH!


git checkout -b nameBranch -> Create new branch
git add . -> add change
git commit -m "message" -> commit with message
git push origin nameBranch -> push online


__________________________
git fetch upstream
fatal: 'upstream' does not appear to be a git repository
fatal: Could not read from remote repository.

Please make sure you have the correct access rights
and the repository exists.

git remote add upstream git@github.com:MikailMilissen/ictquery.git

===

To install the DB: 
Open /config/ictquery_devlopment.sql
Copy the script
Run it into query

User: Postgres
Password: ictpass