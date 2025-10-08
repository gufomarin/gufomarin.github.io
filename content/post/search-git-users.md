---
title: "Search Git Users"
date: 2025-09-16T21:42:46+02:00
draft: false
tags: ["bash", "regex"]
---
## Introduction
Let's say we want to change our git username to another one. Instead of checking manually if the username is already taken, we can automate this process by writing a script named `fgitusr`. The content of the script looks like this:

## Code
```bash
# Check regex rules
if [[ !("$1" =~ ^[0-9a-zA-Z]{1}[0-9a-zA-Z\-]*[0-9a-zA-Z]{1}$) ]]; then
    echo "$1 DOESN'T MATCH REGEX"
    exit 1
fi

# Check if usersname exists
curl --output /dev/null --silent  --head --fail "https://github.com/$1"
if [ $? -eq 0 ]; then
    echo "USER $1 EXISTS";
else
    echo "USER $1 DOESN'T EXIST";
fi
```
The main idea is that we use `curl` to look if the url `https://github.com/<username>` is a valid link. If it is, then the user exist.

## Output
When user is found:
```bash
$ fgitusr foo
USER foo EXISTS
```

When user is not found:
```bash
$ fgitusr fobarfoo
USER fobarfoo DOESN'T EXIST
```

When user doesn't respect regex rules:
```bash
$ fgitusr foo_bar
foo_bar DOESN'T MATCH REGEX
```

## Conclusion
The advantage of searching usernames with this method, is that you can automate the process. For example you can use a for loop over multiple usernames to check if every username is available:
```bash
$ for u in "abc" "bcd" "cde"; fgitusr $u
USER abc EXISTS
USER bcd EXISTS
USER cde EXISTS
```


