require 'sinatra/base'
require './lib/game'

class RPS < Sinatra::Base

  get '/' do
    erb(:index)
  end

  post '/register' do
    $game = Game.new(params[:human_player_name])
    redirect '/play'
  end

  get '/play' do
    @human_player_name = $game.human_player.name
    erb(:play)
  end

  get '/outcome' do
    @outcome = $game.decide_winner($game.human_player.move(params[:choice]), $game.computer_player.move)
    if @outcome == "Draw"
      erb(:draw)
    else
      erb(:win)
    end
  end

end
