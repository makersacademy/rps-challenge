require 'sinatra/base'
require './lib/game.rb'

class RPS < Sinatra::Base;

  get '/' do
    erb :home
  end

  post '/play' do
    @game = Game.create(params[:player_1_name])
    @name = @game.player_1.name
    erb :play
  end

  run! if app_file == $0

end
