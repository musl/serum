#!/usr/bin/env bash
cat <<EOF > `basename ${0/\.sh/}`
package serum

const (
	// Version is the semantic version string for this library, copied
	// from the most recent tag on the current branch.
	Version = \``git describe --abbrev=0 --tags 2>/dev/null || echo 0.0.0`\`

	// Revision is the DVCS commit ID for this code, copied from the
	// most recent commit on this branch.
	Revision = \``git rev-parse HEAD 2>/dev/null || echo 0000000000000000000000000000000000000000`\`

	// Contributors is a list of all of the contributors to this code.
	Contributors = \``cat CONTRIBUTORS`\`

	// License is the full text of the license for this software.
	License = \``cat LICENSE`\`
)
EOF
