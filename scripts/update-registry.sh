#!/bin/bash

LITECOINREPO=$(grep -oE '^\s+REPOSITORY_URL:.*' .gitlab-ci.yml | awk '{print $2}')
STATEFULESET='statefulset.yaml'

function update_registry () {
  perl -i -pe "s|(image: )(.*litecoin)(:0.18.1)|\1${LITECOINREPO}\3|g" $STATEFULESET
  echo $LITECOINREPO
}

function main() {
  update_registry
}

main "$@"
