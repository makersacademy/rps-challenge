require 'sinatra/base'
require './lib/player'
require './lib/game'

class RockPaperScissors < Sinatra::Base
  enable :sessions

  get '/' do
    erb :index
  end

  post '/options' do
    game = Game.new(Player.new(params[:name]), Player.new("Computer"), Rules)
    session[:game] = game
    redirect '/options'
  end

  get '/options' do
    @game = session[:game]
    erb :options
  end

  post '/play' do
    @player = session[:game].player_1
    @player.update_choice(params[:choice])
    redirect '/outcome'
  end

  get '/outcome' do
    @game = session[:game]
    @game.play
    erb :play
  end
end
