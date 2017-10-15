require 'sinatra/base'
require './lib/player'

class RPS < Sinatra::Base
  enable :sessions

  get '/' do
    erb :index
  end

  post '/names' do
    $player_1 = Player.new(params[:name])
    redirect '/play'
  end

  get '/play' do
    $player_1_name = $player_1.name
    erb :play
  end

  get '/choice' do
    # @player_1 = session[:name]
    erb :choice
  end

  get '/computer_choice' do
    erb :computer_choice
  end


  # start the server if ruby file executed directly
  run! if app_file == $0
end
