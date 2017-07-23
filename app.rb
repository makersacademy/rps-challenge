require 'sinatra/base'
require './lib/game'

class RPS < Sinatra::Base
  enable :sessions

  get '/' do
    erb :index
  end

  post '/play' do
    player = Player.new(params[:name])
    @game = Game.create(player)
    erb :play
  end

  #post options from result page

  run! if app_file == $0
end
