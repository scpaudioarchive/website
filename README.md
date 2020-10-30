# README

<div align="center">

![Discord](https://img.shields.io/discord/707272860393144381)
![Travis (.com) branch](https://img.shields.io/travis/com/scpaudioarchive/website/main)
![GitHub deployments](https://img.shields.io/github/deployments/scpaudioarchive/scpaudioarchive.github.io/github-pages)

![GitHub last commit](https://img.shields.io/github/last-commit/scpaudioarchive/website)
![GitHub commit activity](https://img.shields.io/github/commit-activity/m/scpaudioarchive/website)
![GitHub issues](https://img.shields.io/github/issues-raw/scpaudioarchive/website)
![GitHub contributors](https://img.shields.io/github/contributors/scpaudioarchive/website)
</div>

Thank you for contributing!

## Prerequisites

- Hugo

https://github.com/gohugoio/hugo/releases/latest -- Please install the extended version.

- A Markdown editor

## Making Changes

Fork the repo from Github and then clone to your own machine.

``` shell
git clone --recurse-submodules https://github.com/scpaudioarchive/website
cd website
```

### Testing

```shell
hugo serve -D --disableFastRender  # run server without building the site, will show draft pages
hugo serve --disableFastRender     # run the server
```

Usually test occurs at http://localhost:1313

## Keep your branch/ fork up to date

``` shell
# If you're working off a branch in the original repo
git fetch
git merge origin/develop

# Or if you forked the code
git remote add upstream https://github.com/scpaudioarchive/website
git fetch upstream
git rebase upstream/master
```

Travis CI auto-deploys the main branch.

---

PR's welcome. Any questions? Join the [Discord server](https://scpaudioarchive.github.io/go/discord).

## Thank you!
