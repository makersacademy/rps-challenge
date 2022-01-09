require 'sinatra/base'
require 'sinatra/reloader'
require './lib/game'

class RockPaperScissors < Sinatra::Base
  configure :development do
    register Sinatra::Reloader
    also_reload './lib/game'
  end

  enable :sessions

  get '/' do 
    session[:game] = nil
    erb(:index)
  end

  post '/name' do 
    session[:name] = params[:name]
    redirect '/play'
  end

  get '/play' do 
    session[:game] = nil
    @name = session[:name]
    erb(:play)
  end

  post '/rock' do
    session[:player_choice] = "ROCK"
    session[:game] = Game.new
    session[:game].player1_choice("ROCK")
    redirect '/results'
  end

  post '/paper' do
    session[:player_choice] = "PAPER"
    session[:game] = Game.new
    session[:game].player1_choice("PAPER")
    redirect '/results'
  end

  post '/scissors' do
    session[:player_choice] = "SCISSORS"
    session[:game] = Game.new
    session[:game].player1_choice("SCISSORS")
    redirect '/results'
  end

  get '/results' do
    @name = session[:name]
    @player_choice, @gamebot_choice, @result = session[:game].summary
    erb(:results)
  end
end