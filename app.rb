require 'sinatra/base'
require 'sinatra/reloader'

class Game < Sinatra::Base

  enable :sessions

  configure :development do
    register Sinatra::Reloader
  end

  get '/' do
    erb :index
  end

  post '/name' do
    $player = Player.new(params[:player_name])
    $computer = Player.new
    redirect '/play'
  end

  get '/play' do
    @name = $player.name
    erb :play
  end

  post '/player_choice' do
    $player.player_choice(params[:choice])
    $computer.computer_choice
    redirect '/result'
  end

  get '/result' do
    @player_choice = $player.choice
    @computer_choice = $computer.choice
    @name = $player.name
    erb :result
  end

  run! if app_file == $0
end
