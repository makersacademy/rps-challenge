require 'sinatra/base'
require_relative 'lib/player'

class Rps < Sinatra::Base
  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/name' do
    $player = Player.new(params[:player_name])
    $computer = Player.new("Computer")
    redirect '/play'
  end

  get '/play' do
    @player = $player
    @computer = $computer
    erb(:play)
  end

  get '/move' do
    @player = $player
    @computer = $computer
    erb(:move)
  end


  run! if app_file == $0
end
