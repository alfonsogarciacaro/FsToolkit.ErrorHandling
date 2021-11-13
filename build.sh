#!/usr/bin/env bash
# -*- coding: utf-8 -*-

set -eu
set -o pipefail

echo "Restoring dotnet tools..."
dotnet tool restore

FAKE_DETAILED_ERRORS=true PAKET_SKIP_RESTORE_TARGETS=true dotnet fake build -t "$@"