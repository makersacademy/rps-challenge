require 'sinatra'
require './lib/game.rb'

class RockPaperScissors < Sinatra::Base
  enable :sessions

  get '/' do
    erb :index
  end

  post '/welcome' do
    session[:name] = params[:name]
    redirect '/game'
  end

  get '/game' do
    erb :game
  end

  get '/play' do
    erb :play
  end

  post '/fighting' do
    session[:choice] = params[:game]
    redirect '/result'
  end
  
  get '/result' do
    @choice = session[:choice]
    game = Game.new
    @computer = game.computer
    @result = game.result(@choice, @computer)
    erb :result
  end

  run! if app_file == $0
end
