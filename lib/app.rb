require 'sinatra/base'

require_relative 'lib/player'
class rps < Sinatra::Base
  get '/' do
    'Rock Paper Scissors, Lets start!!'
    erb :index
  end

  post '/names' do
    @player_name = params[:player_name]
    $player = Player.new(params[:player_name])
    redirect '/play'
  end

  get '/play' do
    @player_name = $player.name
    erb :play
  end


  # run! if app_file == $0
  run! if app_file == $0
end
