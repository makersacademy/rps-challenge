require 'sinatra/base'
require 'player.rb'

class Rps < Sinatra::Base

  enable :sessions

  get '/' do
  erb(:index)
  end

  post '/names' do
    $player_1 = Player.new(params[:player_1_name], params[:player_1_choice])
    redirect '/play'
  end

  get '/play' do
    @player_1_name = $player_1.name
    @player_1_choice = $player_1.choice
    erb(:play)
  end

  get '/result' do
    erb(:result)
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
