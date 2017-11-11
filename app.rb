require 'sinatra/base'
require './lib/game'
require './lib/gameitem'

class RPSGame < Sinatra::Base

  get '/' do
    erb :index
  end

  post '/play' do
    player = params[:name]
    Game.new(player)
    erb :play
  end

  post '/results' do
    player_choice = Game.instance.select_player_choice(params[:choice])
    @result = Game.instance.decide_winner(player_choice)
    erb :results
  end

  run! if app_file == $0
end
