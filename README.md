# fluxcd-play


flux bootstrap github \
  --owner=$GITHUB_USER \
  --repository=$GIT_REPO \
  --branch=$GIT_BRANCH \
  --path=$GIT_PATH \
  --personal


flux create source git test \
  --url=https://github.com/mavrik90/fluxcd-play \
  --branch=master \
  --interval=30s
