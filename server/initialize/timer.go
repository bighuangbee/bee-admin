package initialize

import (
	"fmt"

	"github.com/robfig/cron/v3"

	"github.com/bighuangbee/bee-admin/server/config"
	"github.com/bighuangbee/bee-admin/server/global"
	"github.com/bighuangbee/bee-admin/server/utils"
)

func Timer() {
	if global.CONFIG.Timer.Start {
		for i := range global.CONFIG.Timer.Detail {
			go func(detail config.Detail) {
				var option []cron.Option
				if global.CONFIG.Timer.WithSeconds {
					option = append(option, cron.WithSeconds())
				}
				_, err := global.Timer.AddTaskByFunc("ClearDB", global.CONFIG.Timer.Spec, func() {
					err := utils.ClearTable(global.DB, detail.TableName, detail.CompareField, detail.Interval)
					if err != nil {
						fmt.Println("timer error:", err)
					}
				}, option...)
				if err != nil {
					fmt.Println("add timer error:", err)
				}
			}(global.CONFIG.Timer.Detail[i])
		}
	}
}
