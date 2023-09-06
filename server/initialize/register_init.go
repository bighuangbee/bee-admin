package initialize

import (
	_ "github.com/bighuangbee/bee-admin/server/source/example"
	_ "github.com/bighuangbee/bee-admin/server/source/system"
)

func init() {
	// do nothing,only import source package so that inits can be registered
}
