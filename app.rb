require 'sinatra/base'
require './lib/game'

class RockPaperScissors < Sinatra::Base
  enable :sessions
  set :session_secret, "secret"
  
  get '/' do
    erb :index
  end

  post '/' do
    redirect '/'
  end

  post '/single' do
    erb :single
  end

  post '/play' do
    @game = Game.new(Player.new(params[:name]))
    session[:game] = @game
    erb :play
  end

  get '/rock' do
    @game = session[:game]
    @game.player.choose("rock")
    @game.generate_random
    erb :rock
  end

  get '/paper' do
    @game = session[:game]
    @game.player.choose("paper")
    @game.generate_random
    erb :paper
  end

  get '/scissors' do
    @game = session[:game]
    @game.player.choose("scissors")
    @game.generate_random
    erb :scissors
  end

  post '/new-round' do
    erb :'new-round'
  end

  post '/multi' do
    erb :multi
  end

  post '/play-multi' do
    @game = Game.new(Player.new(params[:player_1_name]), Player.new(params[:player_2_name]))
    session[:game] = @game
    erb :'play-multi'
  end

  get '/rock-multi' do
    @game = session[:game]
    @game.player.choose('rock')
    erb :'rock-multi'
  end

  get '/rr' do
    @game = session[:game]
    @game.player_2.choose('rock')
    erb :winner
  end

  get '/rs' do
    @game = session[:game]
    @game.player_2.choose('scissors')
    erb :winner
  end

  get '/rp' do
    @game = session[:game]
    @game.player_2.choose('paper')
    erb :winner
  end
  get '/scissors-multi' do
    @game = session[:game]
    @game.player.choose('scissors')
    erb :'scissors-multi'
  end

  get '/sr' do
    @game = session[:game]
    @game.player_2.choose('rock')
    erb :winner
  end

  get '/sp' do
    @game = session[:game]
    @game.player_2.choose('paper')
    erb :winner
  end

  get '/ss' do
    @game = session[:game]
    @game.player_2.choose('scissors')
    erb :winner
  end

  get '/paper-multi' do
    @game = session[:game]
    @game.player.choose('paper')
    erb :'paper-multi'
  end

  get '/pr' do
    @game = session[:game]
    @game.player_2.choose('rock')
    erb :winner
  end

  get '/pp' do
    @game = session[:game]
    @game.player_2.choose('paper')
    erb :winner
  end

  get '/ps' do
    @game = session[:game]
    @game.player_2.choose('scissors')
    erb :winner
  end

  post '/play-multi-again' do
    @game = session[:game]
    erb :'play-multi'
  end
end