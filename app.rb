require 'sinatra/base'
require 'player'
require 'game'

class RPS < Sinatra::Base
  enable :sessions

  get '/' do
    erb :index
  end

  post '/player_name' do
    $game = Game.new(Player.new(params[:player_name]))
    redirect '/play_rps'
  end

  get '/play_rps' do
    erb :play_rps
  end

  post '/compare_weapon' do
    session[:weapon_choice] = params[:weapon_choice]
    redirect '/bout_result'
  end

  get '/bout_result' do
    @weapon_choice = session[:weapon_choice]
    erb :bout_result
  end

run! if app_file == $0
end
