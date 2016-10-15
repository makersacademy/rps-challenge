require 'sinatra/base'
require './lib/player'
require './lib/computer'

class Rps < Sinatra::Base

  # enable :sessions

  get '/' do
    erb(:index)
  end

  post '/names' do
    $player_1 = Player.new(params[:player_1_name])
    $computer = Computer.new
    redirect '/play'
  end

  get '/play' do
    @player_1_name = $player_1.name
    @computer_name = $computer.name
    erb(:play)
  end

  post '/rock' do
    redirect '/result'
  end

  post '/paper' do
    redirect '/result'
  end

  post '/scissors' do
    redirect '/result'
  end

  get '/result' do
    @player_1_name = $player_1.name
    @computer_name = $computer.name
    erb(:result)
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
