require 'sinatra/base'
require './lib/game.rb'

class RPS < Sinatra::Base
  get '/' do
    erb(:names_form)
  end

  post '/player_name' do
    Game.create(params["Player1"])
    redirect '/play'
  end

  get '/play' do
    @game = Game.instance
    "#{@game.player1} VS Computer"
  end

  run! if app_file == $0
end
