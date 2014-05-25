module.exports = (robot) ->
  robot.respond /meshi/i, (msg) ->
    msg.send "飯☆時 手洗いうがい"

  robot.hear /(ゴホン|ゲホン|ごほん|げほん|げほっ|ごほっ)$/, (msg) ->
    msg.send "#{msg.message.user.name}: #{msg.random ["あなたの風邪はどこから？", "あなたーの風邪に狙いを決めて♪", "感染(うつ)ルンです"]}"
