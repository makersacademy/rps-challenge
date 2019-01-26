require 'sinatra/base'
require './lib/player'
require './lib/computer'

class RockPaperScissors < Sinatra::Base

  enable :sessions

  get '/' do
    erb :index
  end

  post '/name' do
    $player = Player.new(params[:name])
    redirect '/play'
  end

  get '/play' do
    @player = $player
    erb :play
  end

  post '/move' do
    $move = params[:move]
    redirect '/result'
  end

  get '/result' do
    @player = $player
    @computer = Computer.new
    erb :result
  end

  run! if app_file == $0

end
