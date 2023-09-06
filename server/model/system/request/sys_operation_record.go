package request

import (
	"github.com/bighuangbee/bee-admin/server/model/common/request"
	"github.com/bighuangbee/bee-admin/server/model/system"
)

type SysOperationRecordSearch struct {
	system.SysOperationRecord
	request.PageInfo
}
