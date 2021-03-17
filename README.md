# fluxcd-avaloshyn-test
export GHUSER="mavrik90"

fluxctl install \
--git-user=${GHUSER} \
--git-email=${GHUSER}@users.noreply.github.com \
--git-url=git@github.com:${GHUSER}/fluxcd-play.git \
--git-path=flux-addons,flux-configmaps,flux-namespaces \
--namespace=flux | kubectl apply -f -
