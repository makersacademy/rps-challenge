require 'sinatra/base'
require 'sinatra/reloader'
require_relative './lib/game'
require_relative './lib/player'

class RpsGame < Sinatra::Base
  configure :development do
    register Sinatra::Reloader
  end

  get '/' do
    erb :index
  end

  post '/name' do
    $game = Game.new(Player.new(params[:name]))
    redirect '/play'
  end

  get '/play' do
    erb :play
  end

  post '/result' do
    $game.player.move=(params[:move])
    result = $game.play
    redirect "/gameover?result=#{result}"
  end 

  get '/gameover' do
    
  end

  run! if app_file == $0
end