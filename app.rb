require 'sinatra/base'
require 'sinatra/reloader'

class Rpsgame < Sinatra::Base
  configure :development do
    register Sinatra::Reloader
  end

  get '/' do
   erb(:index)
  end
  
  post '/game' do
   player = Player.new(params[:player_name])
   $game = Game.new(player)
   redirect '/game'
  end
  
  get '/game' do
    @player_name = $game.player.name
    erb(:game)
  end

  post '/roll' do
    $player_answer = params[:answer]
    redirect 'result'
  end

  get '/result' do
    
    erb(:result)
  end

  run! if app_file == $0

end