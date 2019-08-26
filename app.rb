require 'sinatra/base'
require './lib/game'
class Play < Sinatra::Base

  enable :sessions

  get '/' do
    erb :getname
  end

  get '/thegame' do
    erb :thegame
  end

  post '/thegame' do
    session[:name] = params[:name]
    erb :thegame

  end

  get '/compare' do
    erb :compare
  end

  post '/compare' do
    game = Game.new
    @computer=game.choices.sample
    @player1 = session[:name]
    @mychoice = params[:mychoice].first
    erb :compare
  end
end
