require 'sinatra/base'
require 'sinatra/reloader'

class RPSGame < Sinatra::Base
  configure :development do
    register Sinatra::Reloader
  end

  get '/' do
    erb(:index)
  end

  post '/names' do
    $player_1_name = params[:player_1_name]
    redirect '/play'
  end

  get '/play' do
    @player_1_name = $player_1_name
    erb(:play)
  end

  post '/move' do
    $player_1_move = params[:play]
    redirect '/result'
  end

  get '/result' do
    @player_1_move = $player_1_move
    erb(:result)
  end

  run! if app_file == $0
end