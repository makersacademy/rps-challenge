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
    erb(:index)
  end

  post '/humans' do
    session[:mode] = "humans"
    redirect '/deets'
  end

  post '/gamebot' do 
    session[:mode] = "gamebot"
    redirect '/deets'
  end

  get '/deets' do
    @mode = session[:mode]
    erb(:deets)
  end

  post '/name' do 
    session[:name1] = params[:name1]
    session[:name2] = session[:mode] == "gamebot" ? "GameBot" : params[:name2]
    redirect '/play'
  end

  get '/play' do 
    session[:game] = nil
    @name1, @name2 = session[:name1], session[:name2]
    erb(:play)
  end

  post '/rock1' do
    session[:player_choice] = "ROCK"
    session[:game] = Game.new
    session[:game].player1_choice("ROCK")
    session[:mode] == "gamebot" ? (redirect '/results') : (redirect '/play2')
  end

  post '/paper1' do
    session[:player_choice] = "PAPER"
    session[:game] = Game.new
    session[:game].player1_choice("PAPER")
    session[:mode] == "gamebot" ? (redirect '/results') : (redirect '/play2')
  end

  post '/scissors1' do
    session[:player_choice] = "SCISSORS"
    session[:game] = Game.new
    session[:game].player1_choice("SCISSORS")
    session[:mode] == "gamebot" ? (redirect '/results') : (redirect '/play2')
  end

  get '/play2' do
    @name2 = session[:name2]
    erb(:play2)
  end

  post '/rock2' do
    session[:player2_choice] = "ROCK"
    session[:game].player2_choice("ROCK")
    redirect '/results'
  end

  post '/paper2' do
    session[:player2_choice] = "PAPER"
    session[:game].player2_choice("PAPER")
    redirect '/results'
  end

  post '/scissors2' do
    session[:player2_choice] = "SCISSORS"
    session[:game].player2_choice("SCISSORS")
    redirect '/results'
  end

  get '/results' do
    @name1, @name2 = session[:name1], session[:name2]
    @player1_choice, @player2_choice, @result = session[:game].summary
    erb(:results)
  end
end