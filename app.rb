require 'sinatra/base'
require_relative 'lib/game'
require_relative 'lib/player'
require_relative 'lib/computer'

class RockPaperScissors < Sinatra::Base

  enable :sessions

  get '/' do
    erb :index
  end

  post '/names' do
    player_1 = Player.new(params[:player_1])
    player_2 = Computer.new("The Machine")
    @game = Game.create(player_1, player_2)
    redirect '/play'
  end

  get '/play' do
    @game = Game.instance
    erb :play
  end

  post '/options' do
    @game = Game.instance
    @game.choose_player_1_option(params[:chosen_option])
    @game.choose_player_2_option(@game.computer_option)
    redirect '/result'
  end

  get '/result' do
    @game = Game.instance
    @result = @game.result
    erb :result
  end

  get '/end' do
    erb :end
  end

  run! if app_file == $0
end
