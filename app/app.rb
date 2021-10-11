require 'sinatra/base'
require 'sinatra/reloader'
require './lib/classic_game'

class RockPaperScissors < Sinatra::Base
  
  configure :development do
    register Sinatra::Reloader
  end

  enable :sessions

  get '/' do
    erb :home
  end

  post '/name' do
    session[:player] = Player.new(params[:name])
    redirect '/start'
  end

  get '/start' do
    @name = session[:player].name
    erb :start
  end

  post '/create_classic' do
    session[:game] = ClassicGame.new(session[:player])
    redirect '/classic'
  end

  get '/classic' do
    @name = session[:player].name
    erb :classic
  end

  post '/move' do
    game = session[:game]
    game.move(params[:rps_select])
    game.ai_move
    redirect '/result'
  end

  get '/result' do
    game = session[:game]
    @p_selection = game.p_turn
    @ai_selection = game.ai_turn
    @result = game.result
    erb :result
  end

  post '/summary' do
    redirect '/classic'
  end

  run! if app_file == $0
end
