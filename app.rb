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

  post '/mode' do
    session[:mode] = params[:mode]
    redirect '/deets'
  end

  get '/deets' do
    @mode = session[:mode]
    erb(:deets)
  end

  post '/name' do 
    session[:name1] = params[:name1]
    session[:name2] = session[:mode] == "gamebot" ? "GameBot" : params[:name2]
    redirect '/play1'
  end

  get '/play1' do 
    session[:game] = nil
    @name1, @name2 = session[:name1], session[:name2]
    erb(:play1)
  end

  post '/select1' do
    session[:player1_choice] = params[:player1]
    session[:game] = Game.new(session[:player1_choice])
    session[:mode] == "gamebot" ? (redirect '/results') : (redirect '/play2')
  end

  get '/play2' do
    @name2 = session[:name2]
    erb(:play2)
  end

  post '/select2' do
    session[:player2_choice] = params[:player2]
    session[:game].player2_choice(session[:player2_choice])
    redirect '/results'
  end

  get '/results' do
    @name1, @name2 = session[:name1], session[:name2]
    @player1_choice, @player2_choice, @result = session[:game].summary
    erb(:results)
  end
end