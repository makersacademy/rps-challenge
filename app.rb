require 'sinatra/base'
require "./lib/player"
require "./lib/game"

class RockPaperScissors < Sinatra::Base
  set :port, 5678

  before { @game = Game.current_game }

  get '/' do
    erb :index
  end

  get '/name' do
    erb :name
  end

  post '/name' do
    player = Player.new(params[:name])
    computer = Player.new("Computer")
    Game.create(player, computer)
    redirect "/game"
  end

  get '/game' do
    erb :game
  end

  post '/choice' do
    @game.player_one.choose(params[:choice])
    @game.player_two.choose_random
    redirect "/result"
  end

  get '/result' do
    erb :result
  end

  run! if app_file == $0

end
