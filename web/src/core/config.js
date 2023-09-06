/**
 * 网站配置文件
 */

const config = {
  appName: '后台管理系统',
  appLogo: 'https://img2.baidu.com/it/u=573294367,459956056&fm=253&fmt=auto&app=138&f=PNG?w=500&h=500',
  showViteLogo: true
}

export const viteLogo = (env) => {
  if (config.showViteLogo) {
    const chalk = require('chalk')

    console.log(
      chalk.green(
        `> 当前版本:v2.5.7`
      )
    )
    console.log('\n')
  }
}

export default config
