module.exports = (robot) ->
  robot.hear /hoge/i, (msg) ->
    msg.send "fuga"

  robot.hear /fuga/i, (msg) ->
    msg.send "hoge, fuga"
