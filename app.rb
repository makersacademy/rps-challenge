require 'sinatra/base'
require_relative 'lib/player'

class RPS < Sinatra::Base
  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/names' do
    # $player = Player.new(params[:player])
    redirect to('/play')
  end

  post '/play' do
    $player = Player.new(params[:player])
    @player = $player.name
    erb(:play)
  end

  run! if app_file == $0
end
