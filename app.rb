require 'sinatra/base'
require_relative './lib/game.rb'

class RPS < Sinatra::Base

  enable :sessions

  get '/' do
    erb :index
  end

  post '/names' do
    session[:player_name] = params[:player_name]
    redirect('/game')
  end

  get '/game' do
    @player_name = session[:player_name]
    $game = Game.new(@player_name)
    erb :game
  end

  post '/selection' do
    @game = $game
    @weapon = params[:selection]
    @game.select_weapon(@weapon)
    redirect('/result')
  end

  get '/result' do
    @game = $game
    @game.result
    erb :result
  end

  run! if app_file == $0
end
