require 'sinatra/base'
require './lib/game_class'
require './lib/game_randomizer'

class RpsGame < Sinatra::Base

 enable :sessions

  get '/' do
    erb :index
  end

  post '/registering' do
    session[:player_name] = params[:player_name]
    redirect '/play'
  end

  get '/play' do
    @player_name = session[:player_name]
    erb :play
  end

  post '/selecting-option' do
    session[:player_option] = params[:option]
    session[:game] = Game.new(session[:player_option])
    redirect '/option'
  end

  get '/option' do
    @player_option = session[:player_option]
    erb :option
  end

  post '/game-choice' do
    session[:random] = GameRandomizer.new.randomize
    redirect '/winner'
  end

  get '/winner' do
    @game_choice = session[:random]
    @outcome = session[:game].winner(@game_option)
    erb :winner
  end

  run! if app_file == $0
end
