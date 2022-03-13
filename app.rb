require 'sinatra/base'
require 'sinatra/reloader'
require_relative './lib/player'
require_relative './lib/game'

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

  post '/result' do
    $player_answer = params[:player_answer]
    redirect 'result'
  end

  get '/result' do
    @player_answer = $player_answer
    @pc_answer = $game.pc_answer
    @result_message = $game.result(@player_answer,@pc_answer)
    erb(:result)
  end

  run! if app_file == $0

end