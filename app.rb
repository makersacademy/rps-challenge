require "sinatra/base"
require "./lib/game"
require "./lib/player"

class RPSgame < Sinatra::Base
  get "/" do
    "Hello World"
  end
end
