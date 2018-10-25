package serum

import (
	"testing"

	"github.com/stretchr/testify/assert"
)

func TestVersion(t *testing.T) {
	assert.Regexp(t, `^\d+\.\d+\.\d+$`, Version)
}

func TestRevision(t *testing.T) {
	assert.Regexp(t, `^[[:xdigit:]]{40}$`, Revision)
}

func TestAuthors(t *testing.T) {
	assert.NotEmpty(t, Authors)
}
