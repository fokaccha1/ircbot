module.exports = (robot) ->
  robot.respond /tiquav (.*)/i, (msg) ->
    word = msg.match[1]
    request = msg.http("http://api.tiqav.com/search.json")
                  .query(q: word).get()
    request (err, res, body) ->
      try
        json = JSON.parse body
        img = msg.random json
        msg.send "http://img.tiqav.com/#{img.id}.th.#{img.ext}"
      catch error
        msg.send "Jsonがパースできないよ"
