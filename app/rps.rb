require 'sinatra/base'
require './lib/game'
require './lib/computer'

class RPS < Sinatra::Base

  enable :sessions

  before do
    @game = Game.new(session)
    @computer = Computer.new
    session[:computer_choice] = @computer.choose
  end

  get '/' do
    erb :index
  end

  post '/name' do
    session[:player_name] = params[:player_name]
    redirect '/game'
  end

  get '/game' do
    erb :game
  end

  post '/play' do
    p params
    session[:player_choice] = params[:player_choice]
    redirect '/play'
  end

  get '/play' do
    erb :play
  end

  get '/css/style.css' do
    scss :styles
  end
end
