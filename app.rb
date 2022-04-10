require 'sinatra/base'
require 'sinatra/reloader'
require_relative './lib/player'
require_relative './lib/game'

class Rps < Sinatra::Base
  configure :development do
    register Sinatra::Reloader
  end
  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/enter_names' do
    $game = Game.new(Player.new(params[:player_1_name]), Player.new(params[:player_2_name]))
    redirect '/show_names'
  end

  get '/show_names' do
    erb(:show_names)
  end

  get '/player_1' do
    erb(:player_1_rps)
  end

  post '/player_1_selection' do
    $game.player_1_choice = params[:weapon]
    redirect '/player_2_rps'
  end

  get '/player_2_rps' do
    erb(:player_2_rps)
  end

  post '/player_2_selection' do
    $game.player_2_choice = params[:weapon]
    redirect '/result'
  end

  get '/result' do
    erb(:result)
  end

  run! if app_file == $0
end
