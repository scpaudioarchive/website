# SCP Foundation Audio Archive's Website

<div align="center">

![Discord](https://img.shields.io/discord/707272860393144381)
![CI / CD](https://github.com/scpaudioarchive/website/workflows/CI%20/%20CD/badge.svg?branch=main)
![GitHub deployments](https://img.shields.io/github/deployments/scpaudioarchive/scpaudioarchive.github.io/github-pages)

![GitHub last commit](https://img.shields.io/github/last-commit/scpaudioarchive/website)
![GitHub commit activity](https://img.shields.io/github/commit-activity/m/scpaudioarchive/website)
![GitHub issues](https://img.shields.io/github/issues-raw/scpaudioarchive/website)
![GitHub contributors](https://img.shields.io/github/contributors/scpaudioarchive/website)
</div>

Thank you for contributing!

## Prerequisites

- [Hugo](https://github.com/gohugoio/hugo/releases/latest) - extended version.

## Contributing

Clone this repo: `git clone --recurse-submodules https://github.com/scpaudioarchive/website.git`

PR's are welcome, in most cases target **main**.

Any questions? Join the [Discord server](https://scpaudioarchive.github.io/go/discord), or email me (listed on website/ `git log`).

## Standards

### Commit Messages

Loosely [conventional commits](https://www.conventionalcommits.org/en/). [also a must read](https://chris.beams.io/posts/git-commit)

```
type: Description of action   - type lowercase, capitalize Description. no ending punctuation, this line should be under 50 chars

Detailed description of change. May span several lines, hard wrap at 72
characters.

Ref: #1                     - if applicable
See also: #1                - if applicable
Closes: #2                  - if applicable
```

Type may be something like `post`, `readme`, `home page`, `ci`, etc.

You will get a good idea [by looking here at the commit history](https://github.com/scpaudioarchive/website/commits) or running `git log`.

### Markdown

Follow general Markdown best practices and those of Goldmark, which is Hugo's Markdown engine/ parser. Use inline HTML only if necessary and appropriate. You may just insert it or use the "rawhtml" shortcode.

### Time + Dates

**Always** in 24 hours. Example - 05:00, 16:30 (4:30 PM). An explanation like previous may be given if unclear. If applicable, include a timezone as well (EST, UTC, etc.), with conversions or links to common/ standard time zones if needed. "Default" time zones are EST/EDT for now.

Date formatting examples:

- 2020-03-28 (per [ISO-8601](https://www.iso.org/iso-8601-date-and-time-format.html))
- ... on Monday, January 4th, 2020 at (time).

**In frontmatter** (specifically the params `date:` and `lastmod:`), the standard is to format the date and time like so: `2021-03-28 06:55:32 -0500`

- HH:MM:SS (24-hour), timezone (EST is UTC-**5**).

## Thank you!
