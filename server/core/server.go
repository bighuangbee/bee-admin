package core

import (
	"fmt"
	"github.com/fvbock/endless"
	"github.com/gin-gonic/gin"
	"time"

	"github.com/bighuangbee/bee-admin/server/global"
	"github.com/bighuangbee/bee-admin/server/initialize"
	"github.com/bighuangbee/bee-admin/server/service/system"
	"go.uber.org/zap"
)

type server interface {
	ListenAndServe() error
}

func Run() {
	if global.CONFIG.System.UseMultipoint || global.CONFIG.System.UseRedis {
		initialize.Redis()
	}

	// 从db加载jwt数据
	if global.DB != nil {
		system.LoadAll()
	}

	Router := initialize.Routers()
	Router.Static("/form-generator", "./resource/page")

	address := fmt.Sprintf(":%d", global.CONFIG.System.Addr)
	s := initServer(address, Router)
	// 保证文本顺序输出
	// In order to ensure that the text order output can be deleted
	time.Sleep(10 * time.Microsecond)
	global.LOG.Info("server run success on ", zap.String("address", address))

	//fmt.Printf(`
	//文档地址:http://127.0.0.1%s/swagger/index.html
	//运行地址:http://127.0.0.1:8000`, address)

	global.LOG.Error(s.ListenAndServe().Error())
}

func initServer(address string, router *gin.Engine) server {
	s := endless.NewServer(address, router)
	s.ReadHeaderTimeout = 20 * time.Second
	s.WriteTimeout = 20 * time.Second
	s.MaxHeaderBytes = 1 << 20
	return s
}
