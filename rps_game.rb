require 'sinatra/base'
require './lib/player'

class RPSGame < Sinatra::Base

  get '/' do
    erb(:index)
  end

  post '/name' do
    $player = Player.new(params[:player_name])
    redirect '/play'
  end

  get '/play' do
    @player = $player
    erb(:play)
  end


run! if app_file == $0

end
