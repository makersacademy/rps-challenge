require 'sinatra'
require './lib/player'
class RPS < Sinatra::Base
  enable :sessions

  get '/' do
    erb :index
  end

  post '/name' do
    p params
    $player = Player.new(params[:player_name])
    redirect '/selection'
  end

  post '/selection' do
    @player_name = $player.name
    $player.selection(params[:selection])
    @selection = $player.return_selection
    erb :selection
  end

  get '/selection' do
    @player_name = $player.name
    erb :selection
  end

  run! if app_file == $0
end
