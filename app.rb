require 'sinatra/base'
require 'sinatra/reloader'
require './lib/game'

class RockPaperScissors < Sinatra::Base
  enable :sessions
  
  configure :development do
    register Sinatra::Reloader
  end

  get '/' do
    erb :index
  end

  post '/names' do
    session[:player] = params[:player]
    redirect '/game'
  end

  get '/game' do
    @player = session[:player]
    erb :game
  end

  post '/get_result' do
    @choice = params[:choice]
    @player = session[:player]
    game = Game.new(@choice, @player)
    @winner = game.results
    @cpu_choice = game.cpu_choice
    erb :winner
  end

  run! if app_file == $0
end
