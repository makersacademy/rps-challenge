require 'sinatra/base'
# require './lib/player'
# require './lib/game'
class RPS < Sinatra::Base
  get '/' do

  end
  run! if app_file == $0
end
