require 'sinatra/base'
require './lib/game'
require './lib/player'

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
    # @result = game.compare(params[:mychoice].first, game.choices.sample)
    @computer=game.choices.sample
    @player1 = session[:name]
    @mychoice = params[:mychoice].first
    @choices = game.choices
    p @choices
    erb :compare
  end

  get '/vscomputer' do
    erb :vscomputer
  end

  post '/vscomputer' do
    game = Game.new
    @player1 = session[:name]
    @computer=game.choices.sample
    @choice=params[:mychoice].first
    @output = game.compare(@choice,@computer)
    erb :vscomputer
  end

  # run! if app_file == $0 ???
end
