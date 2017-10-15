require 'sinatra/base'
require './lib/game'

class Rock_Paper_Scissors < Sinatra::Base
  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/names' do
    session[:player_1] = params[:player_1]
    redirect '/play'
  end

  get '/play' do
    @player_1 = session[:player_1]
    erb(:play)
  end

  post '/choice' do
    session[:player_choice] = params[:player_choice]
    redirect '/result'
  end

  get '/result' do
    @player_1 = session[:player_1]
    @player_choice = session[:player_choice]
    erb(:result)
  end

  get '/comp_result' do
    $game = Game.new(session[:player_choice].downcase)
    @comp_choice = $game.rand_choice
    erb(:comp_result)
  end

  get '/winner' do
    @result = $game.play
    erb(:winner)
  end

  run! if app_file == $0

end
