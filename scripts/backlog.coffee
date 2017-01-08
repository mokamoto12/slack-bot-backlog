# Description:
#   Slack bot Backlog
#
# Notes:
#   Backlog Webhook
#     /webhook/pullrequest/:room
#       - プルリクエストに関するイベント
#

module.exports = (robot) ->
  robot.router.post '/webhook/pullrequest/:room', (req, res) ->
    room   = req.params.room
    data   = req.body

    robot.messageRoom room, "#{data}"

    res.send 'OK'

