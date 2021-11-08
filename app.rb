require 'sinatra/base'
require 'sinatra/reloader'
require './lib/player'
require './lib/computer'

class RPS < Sinatra::Base
  configure :development do
    register Sinatra::Reloader
    enable :sessions
  end

  get '/' do
    erb :index
  end

  post '/name' do
    $player = Player.new(params[:player_name])
    $computer = Computer.new
    redirect '/play'
  end

  get '/play' do
    @player_name = $player.name
    erb :play
  end

  get '/result' do
    @computer_move = $computer.choose_rps
    @player_name = $player.name
    @player_move = params.values.join('')
    erb :result
  end

  run! if app_file == $0
end
