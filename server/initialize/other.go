package initialize

import (
	"github.com/songzhibin97/gkit/cache/local_cache"

	"github.com/bighuangbee/bee-admin/server/global"
	"github.com/bighuangbee/bee-admin/server/utils"
)

func OtherInit() {
	dr, err := utils.ParseDuration(global.CONFIG.JWT.ExpiresTime)
	if err != nil {
		panic(err)
	}
	_, err = utils.ParseDuration(global.CONFIG.JWT.BufferTime)
	if err != nil {
		panic(err)
	}

	global.BlackCache = local_cache.NewCache(
		local_cache.SetDefaultExpire(dr),
	)
}
