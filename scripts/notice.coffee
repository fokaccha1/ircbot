cron = require('cron').CronJob
module.exports = (robot) ->
  robot.enter ->
    new cron
      cronTime: "58 11 * * 1-5" #"分 時 日 月 曜日"
      start: true
      timeZone: "Asia/Tokyo"
      onTick: ->
        robot.send {room: "#チャンネル名"}, "メッセージ"
