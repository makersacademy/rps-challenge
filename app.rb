require 'sinatra/base'
require 'sinatra/reloader'
require './lib/game'
require './lib/player'

class RockPaperScissors < Sinatra::Base
  configure :development do
    register Sinatra::Reloader
    also_reload './lib/game.rb'
    also_reload './lib/player.rb'
  end

  enable :sessions

  get '/' do 
    erb(:index)
  end

  post '/mode' do
    session[:mode] = params[:mode]
    session[:player2] = Player.new if session[:mode] == "gamebot"
    redirect '/deets'
  end

  get '/deets' do
    @mode = session[:mode]
    erb(:deets)
  end

  post '/name' do 
    session[:player1name] = params[:name1]
    session[:player2name] = params[:name2]
    redirect '/play1'
  end

  get '/play1' do 
    session[:game] = nil
    @name1 = session[:player1name]
    erb(:play1)
  end

  post '/select1' do
    session[:player1] = Player.new(session[:player1name], params[:player1choice])
    session[:mode] == "gamebot" ? (redirect '/results') : (redirect '/play2')
  end

  get '/play2' do
    @name2 = session[:player2name]
    erb(:play2)
  end 

  post '/select2' do
    session[:player2] = Player.new(session[:player2name], params[:player2choice])
    redirect '/results'
  end

  get '/results' do
    @name1, @name2 = session[:player1].name, session[:player2].name
    @player1_choice, @player2_choice = session[:player1].choice, session[:player2].choice
    @winner = Game.new(session[:player1], session[:player2]).winner
    erb(:results)
  end
end
