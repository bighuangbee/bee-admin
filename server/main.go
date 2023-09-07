package main

import (
	"go.uber.org/zap"

	"github.com/bighuangbee/bee-admin/server/core"
	"github.com/bighuangbee/bee-admin/server/global"
	"github.com/bighuangbee/bee-admin/server/initialize"
)

//go:generate go env -w GO111MODULE=on
//go:generate go env -w GOPROXY=https://goproxy.cn,direct
//go:generate go mod tidy
//go:generate go mod download

func main() {
	global.VIPER = core.Viper() // 初始化Viper
	initialize.OtherInit()
	global.LOG = core.Zap() // 初始化zap日志库
	zap.ReplaceGlobals(global.LOG)
	global.DB = initialize.Gorm() // gorm连接数据库
	initialize.Timer()
	initialize.DBList()
	if global.DB != nil {
		initialize.RegisterTables() // 初始化表
		// 程序结束前关闭数据库链接
		db, _ := global.DB.DB()
		defer db.Close()
	}
	core.Run()
}
