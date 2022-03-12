require 'sinatra/base'
require 'sinatra/reloader'
require_relative 'lib/player'

class RockScissorsPaper < Sinatra::Base
  configure :development do
    register Sinatra::Reloader
  end

  enable :sessions

  get '/' do
    erb :index
  end

  post '/name' do
    $player = Player.new(params[:player])
    redirect '/play'
  end

  get '/play' do
    @player = $player
    erb :play
  end

  post '/attack' do
    @player = $player
    $choice = @player.choose_attack(params[:choice])
    redirect '/result'
  end

  get '/result' do
    @choice = $choice
    erb :result
  end

  run! if app_file == $0
end
