package serum

import (
	"testing"

	"github.com/stretchr/testify/assert"
)

func TestConstants(t *testing.T) {
	assert.Regexp(t, `^\d+\.\d+\.\d+$`, Version)
	assert.Regexp(t, `^\w+$`, Revision)
	assert.NotEmpty(t, Contributors)
	assert.NotEmpty(t, License)
}
