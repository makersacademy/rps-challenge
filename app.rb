require 'sinatra'
require './lib/player'

class RPS < Sinatra::Base
  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/play' do
    session[:player1] = Player.new(params[:name])
    session[:player2] = Player.new
    redirect '/play'
  end

  get '/play' do
    @player1_name = session[:player1].name
    @player2_name = session[:player2].name
    erb(:play)
  end

  post '/outcome' do
    session[:player1].make_move(params[:player_move])
    session[:player2].make_move
    redirect '/outcome'
  end

  get '/outcome' do
    @player1 = session[:player1]
    @player2 = session[:player2]
    erb(:outcome)
  end

end
