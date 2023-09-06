package response

import "github.com/bighuangbee/bee-admin/server/config"

type SysConfigResponse struct {
	Config config.Server `json:"config"`
}
