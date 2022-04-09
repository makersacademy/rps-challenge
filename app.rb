# Sinatra application - Controller

require 'sinatra/base'
require 'sinatra/reloader'

require_relative './lib/player'

class RPS < Sinatra::Base
  configure :development do
    register Sinatra::Reloader
  end

  get '/' do
    erb(:index)
  end

  post '/play' do
    $player = Player.new(params["name"])
    erb(:play)
  end

  run! if app_file == $0

end
