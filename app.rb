require 'sinatra/base'
require 'sinatra'

require './lib/player.rb'
require './lib/computer.rb'

class RPS < Sinatra::Base

  enable :sessions
  set :session_secret, 'super secret'

  get '/' do
    erb(:index)
  end

  post '/name' do
    $player = Player.new(params[:player_name])
    $computer = Computer.new
    redirect '/play'
  end

  get '/play' do
    @player = $player
    erb(:play)
  end

  post '/choice' do
    $player.select_choice(params[:choice])
    $computer.select_choice
    redirect '/result'
  end

  get '/result' do
    @player = $player
    @computer = $computer
    erb(:result)
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
