require 'sinatra/base'

class RPS_Game < Sinatra::Base
  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/num_players' do
    @num_players = params[:num_players]
    erb(:num_players)
  end

  get '/one_player' do
    erb(:one_player)
  end

  get '/two_players' do
    erb(:two_players)
  end

  post '/play_one_player' do
    @player_name = params[:player_name]
    erb(:play_one_player)
  end

  post '/play_two_player' do
    @player1_name = params[:player1_name]
    @player2_name = params[:player2_name]
    erb(:play_two_player)
  end
end