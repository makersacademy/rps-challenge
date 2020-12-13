require 'sinatra/base'
require './lib/game'

class RockPaperScissors < Sinatra::Base
  enable :sessions
  set :session_secret, "secret"
  
  get '/' do
    erb :index
  end

  post '/play' do
    @game = Game.new(Player.new(params[:name]))
    session[:game] = @game
    erb :play
  end

  get '/rock' do
    @game = session[:game]
    @game.player.choose("rock")
    erb :rock
  end

  get '/paper' do
    @game = session[:game]
    @game.player.choose("paper")
    erb :paper
  end

  get '/scissors' do
    @game = session[:game]
    @game.player.choose("scissors")
    erb :scissors
  end

  post '/new-round' do
    erb :'new-round'
  end
end