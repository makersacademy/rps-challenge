require 'sinatra/base'
require './lib/game'
require './lib/computer'

class RPSWeb < Sinatra::Base

  enable :sessions

  get '/' do
    erb :index
  end

  post '/names' do
    session[:player_1_name] = params[:player_1_name]
    redirect '/play'
  end

  get '/play' do
    $game = Game.new(session)
    @game = $game
    erb :play
  end

  post '/play' do
    session[:player_1_choice] = params[:player_1_choice].downcase.to_sym
    session[:player_2_choice] = Computer.new.choice
    redirect '/play'
  end

  get '/results' do
    @game = $game
    erb :results
  end

  run! if app_file == $0
end
