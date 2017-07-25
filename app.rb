require 'sinatra/base'
require_relative './lib/game'
require_relative './lib/player'
require_relative './lib/computer'

class RockPaperScissors < Sinatra::Base

  before do
    @game = Game.instance
  end

  get '/' do
    erb(:index)
  end

  get '/play' do
    erb(:play)
  end

  get '/result' do
    erb(@game.result)
  end

  post '/enter_name' do
    player_1 = Player.new(params[:player_1_name])
    player_2 = Computer.new("Computer")
    Game.create(player_1, player_2)
    redirect '/play'
  end

  post '/select_weapon' do
    @game.player_1.weapon = params[:weapon].to_sym
    @game.player_2.weapon = nil # Nil is replaced by random weapon
    redirect '/result'
  end

  run! if app_file == $0

end
