# This markdown file is combination of javascript, React, git, aws documentation

## Javascript















## typescript
















## React
















## Redux
















## Git

- Git documentation [Git doc] (https://www.atlassian.com/git/glossary#commands)
- git official documentation [git] (https://git-scm.com/docs)

- ``git branch`` to see the list of the local branch
- ``git branch -v`` to see detail including comments on each branch
- ``git branch -r`` to see the list of all remote branch









## github & gitdev

``'.'`` use dot to switch a specific repository to gitdev and start coding







## Java


















## Springboot

















## Testing

















## Css

















## Tailwind css

















## Bootstrap
















## Aws















## Markdown file

1. markdown file documentation [.md documentation] (https://www.markdownguide.org/basic-syntax/ )












## VSCode Shortcut












## Inteliji Shortcut














## terminal or cmd 

- script that kills all the running port
- to kill those running port
  - ``lsof -i :6061 -i :6062 -i :6063``
  - ``kill -9 1234 5678 91011`` those are the PID's
```shell
#!/bin/bash

# Array of ports to check and kill
ports=(6061 6062 6063)

for port in "${ports[@]}"
do
echo "Checking port $port..."
pid=$(lsof -ti :$port)
if [ -n "$pid" ]; then
echo "Killing process $pid on port $port"
kill -9 $pid
else
echo "No process found on port $port"
fi
done

```
```shell
chmod +x kill_ports.sh && ./kill_ports.sh
```



- colorzilla extention is a chrome extention to help you get inspired by other website from their color
- [inspiring website design](https://www.entheosweb.com/ideas/creative-wordpress-themes/)
- [configure github for gira](https://support.atlassian.com/jira-software-cloud/docs/reference-issues-in-your-development-work/)