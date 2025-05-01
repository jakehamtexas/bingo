#!/usr/bin/env bash

set -euo pipefail

while read -r jpg; do
  echo "${jpg%.*}" |
    xargs -I'{}' magick {}.jpg {}.png
done <<<"$(find templates -type f -name '*.jpg')"
