#!/usr/bin/env sh

# abort on errors
set -e

# navigate into the build output directory
cd docs/.vuepress/dist

# build
npm run docs:build

# if you are deploying to a custom domain
# echo 'www.example.com' > CNAME

cd ../

git init
git add -A
git commit -m 'deploy'

# if you are deploying to https://<USERNAME>.github.io
# git push -f git@github.com:<USERNAME>/<USERNAME>.github.io.git master

# if you are deploying to https://<USERNAME>.github.io/<REPO>
git push -f git@github.com:wallrandal/meu-portfolio.git main:gh_pages

cd -