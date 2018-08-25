require 'sinatra/base'

class Rps < Sinatra::Base
  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/names' do
    # $p1 = Player.new(params[:player_one])
    # $p2 = Player.new(params[:player_two])
    p params
    session[:p1_name] = params[:player_one]
    session[:p2_name] = params[:player_two]
    # $game = Game.new($p1, $p2)
    # redirect '/coin_toss'
    redirect '/game'
  end

  get '/game' do
    @p1_name = session[:p1_name]
    @p2_name = session[:p2_name]
    erb(:game)
  end

end
