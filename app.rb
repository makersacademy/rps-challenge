require 'sinatra/base'
require './lib/game.rb'

class RPS < Sinatra::Base

  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/names' do
    session[:player_one] = params[:player_one]
    redirect '/play'
  end

  get '/play' do
    @player_one = session[:player_one]
    erb(:play)
  end

  get '/winner' do
    player_one = session[:player_one]
    hand = params[:hand]
    @game = Game.new(player_one, hand)
    @game.play
    erb(:winner)
  end

end
