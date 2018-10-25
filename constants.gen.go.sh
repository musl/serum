#!/usr/bin/env bash
version=`git describe --abbrev=0 --tags 2>/dev/null || echo 0.0.0`
revision=`git rev-parse HEAD || echo 0000000000000000000000000000000000000000`

cat <<EOF > `basename ${0/\.sh/}`
package serum

const (
	// Version is the semantic version string for this library.
	Version = "$version"

	// Revision is the DVCS commit ID for this code.
	Revision = "$revision"
)
EOF
