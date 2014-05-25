module.exports = (robot) ->
  robot.respond /tiquav (.*)/i, (msg) ->
    word = msg.match[1]
    request = msg.http("http://api.tiqav.com/search.json")
                  .query(q: word).get()
    request (err, res, body) ->
      img = JSON.parse body
      msg.send "http://img.tiqav.com/#{img[0].id}.th.#{img[0].ext}"
