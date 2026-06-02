#!/usr/bin/env bash
set -euo pipefail

repo_root="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
lock_file="${repo_root}/toolchain-release.lock"
download_dir="${repo_root}/.cache/toolchain-release"

if [[ ! -f "${lock_file}" ]]; then
  echo "missing ${lock_file}" >&2
  exit 1
fi

# shellcheck disable=SC1090
source "${lock_file}"

mkdir -p "${download_dir}"

IFS=' ' read -r -a part_names <<< "${parts}"

for part in "${part_names[@]}"; do
  if [[ ! -f "${download_dir}/${part}" ]]; then
    gh release download "${tag}" \
      --repo "${repo}" \
      --pattern "${part}" \
      --dir "${download_dir}"
  fi
done

(
  cd "${download_dir}"
  for i in "${!part_names[@]}"; do
    printf -v key 'part_sha256_%03d' "${i}"
    expected="${!key}"
    printf '%s  %s\n' "${expected}" "${part_names[$i]}" | sha256sum -c -
  done

  rm -rf "${repo_root}/toolchain"
  cat "${part_names[@]}" | tar --zstd -xf - -C "${repo_root}"
)

echo "installed ${archive} into ${repo_root}/toolchain"
