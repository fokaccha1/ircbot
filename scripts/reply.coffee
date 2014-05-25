module.exports = (robot) ->
  robot.respond /meshi/i, (msg) ->
    msg.send "飯☆時 手洗いうがい"

  robot.hear /(ゴホン|ゲホン|ごほん|げほん|げほっ|ごほっ)$/, (msg) ->
    msg.send "#{msg.message.user.name}: あなたの風邪はどこから？"
