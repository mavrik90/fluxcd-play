# fluxcd-play

```sh
flux bootstrap github \
  --owner=$GITHUB_USER \
  --repository=$GIT_REPO \
  --branch=$GIT_BRANCH \
  --path=$GIT_PATH \
  --personal
```
```
flux create source git test \
  --url=https://github.com/mavrik90/fluxcd-play \
  --branch=master \
  --interval=30s
```
```
kubectl -n flux-system create secret generic slack-url \
--from-literal=address=https://hooks.slack.com/services/YOUR/SLACK/WEBHOOK
```
