require 'sinatra/base'
require_relative './lib/player'

class RockPaperScissors < Sinatra::Base
  get '/' do
    erb(:index)
  end

  post '/name' do
    $player = Player.new(params[:name])
    redirect('/play')
  end

  get '/play' do
    @player_name = $player.name
    erb(:play)
  end



  # start the server if ruby file executed directly
  run! if app_file == $0
end
