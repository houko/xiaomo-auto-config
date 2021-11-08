# shellcheck disable=SC2045
for dir in $(ls .); do
  if [ -d "$dir" ]; then
    echo "$dir"
    # shellcheck disable=SC2164
    cd "$dir"
    git fetch
    git pull
    # shellcheck disable=SC2103
    cd ..
  fi
done
