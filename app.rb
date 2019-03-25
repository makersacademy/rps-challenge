require 'sinatra/base'
require './lib/player.rb'
require './lib/game.rb'

class RockPaperScissors < Sinatra::Base

  before do
    @game = Game.instance
  end

  get '/' do
    erb :index
  end

  post '/name' do
    player = Player.new(params[:player_name])
    computer = Player.new('Computer')
    Game.create_game(player, computer)
    redirect '/play'
  end

  get '/play' do
    erb :play
  end

  post '/choice' do
    @game.player.choice(params[:choice].downcase.to_sym)
    redirect '/result'
  end

  get '/result' do
    erb :result
  end

  run! if app_file == $0
end
