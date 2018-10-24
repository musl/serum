#!/usr/bin/env bash
cat <<EOF > `basename ${0/\.sh/}`
package serum

const (
	Version = "`git describe --abbrev=0 --tags 2>/dev/null || echo 0.0.0`"
	Revision = "`git rev-parse HEAD || echo 0000000000000000000000000000000000000000`"
)
EOF
