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

  

  run! if app_file == $0
end