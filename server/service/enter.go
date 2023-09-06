package service

import (
	"github.com/bighuangbee/bee-admin/server/service/example"
	"github.com/bighuangbee/bee-admin/server/service/system"
)

type ServiceGroup struct {
	SystemServiceGroup  system.ServiceGroup
	ExampleServiceGroup example.ServiceGroup
}

var ServiceGroupApp = new(ServiceGroup)
