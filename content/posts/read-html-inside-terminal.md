---
title: "Read Html inside terminal"
date: 2024-10-20T11:00:36+03:00
draft: false
---

This can be done by using `curl` and `pandoc`.
The command looks like this:
```bash
curl <url> | pandoc -f html -t plain | less
```
After that you can go up and down with `j` and `k` keys.
With this command you can read directly in the terminal.
If you want to store the information in a text file,
you could use this command:
```bash
curl <url> | pandoc -f html -t plain > file.txt
```
Where `file.txt` is the name of the file where the information
is stored.

To get a complete list of output formats supported by `pandoc`,
you can use the command:
```bash
pandoc --list-output-formats
```

