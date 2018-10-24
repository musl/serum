#!/usr/bin/env bash
cat <<EOF > `basename ${0/\.sh/}`
package serum

const (
	// Version is the semantic version string for this library.
	Version = "`git describe --abbrev=0 --tags 2>/dev/null || echo 0.0.0`"

	// Revision is the DVCS commit ID for this code.
	Revision = "`git rev-parse HEAD || echo 0000000000000000000000000000000000000000`"
)
EOF
