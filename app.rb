require 'sinatra/base'
require './lib/player.rb'
require './lib/game.rb'

class RockPaperScissors < Sinatra::Base

  before do
    @game = Game.instance
  end

  get '/rps' do
    erb :index
  end

  post '/rps/name' do
    player = Player.new(params[:player_name])
    computer = Player.new('Computer')
    Game.create_game(player, computer)
    redirect '/rps/play'
  end

  get '/rps/play' do
    erb :play
  end

  post '/rps/choice' do
    @game.player.choice(params[:choice].downcase.to_sym)
    redirect '/rps/result'
  end

  get '/rps/result' do
    erb :result
  end

  run! if app_file == $0
end
