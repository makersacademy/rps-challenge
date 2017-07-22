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
    @player_1 = @game.player_1
    @player_2 = @game.player_2
    erb(:play)
  end

  post '/enter_name' do
    player_1 = Player.new(params[:player_1_name])
    player_2 = Computer.new("Computer")
    Game.create(player_1, player_2)
    redirect '/play'
  end

  run! if app_file == $0

end
