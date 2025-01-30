# Handling Dependabot Programatically

Scripts and whatnot to assist in handling dependabot pull requests

Set up your env vars for the repository owner and repository name.

```
export REPO_ORG={MY_ORGANIZATION} # if it's your repository, it's your name
export REPO_NAME={REPOSITORY_NAME} # the name of the repository
```

Then run the scripts inside the scripts directory

```shell
sh ./scripts/enabling-automerge-for-passing.sh
```
