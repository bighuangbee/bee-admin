package router

import (
	"github.com/bighuangbee/bee-admin/server/router/example"
	"github.com/bighuangbee/bee-admin/server/router/system"
)

type RouterGroup struct {
	System  system.RouterGroup
	Example example.RouterGroup
}

var RouterGroupApp = new(RouterGroup)
