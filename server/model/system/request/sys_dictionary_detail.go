package request

import (
	"github.com/bighuangbee/bee-admin/server/model/common/request"
	"github.com/bighuangbee/bee-admin/server/model/system"
)

type SysDictionaryDetailSearch struct {
	system.SysDictionaryDetail
	request.PageInfo
}
