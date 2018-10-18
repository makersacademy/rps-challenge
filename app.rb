require 'sinatra/base'
require "./lib/player"
require "./lib/game"
require 'pry'

class RockPaperScissors < Sinatra::Base
  set :port, 5678

  before do
    @game = Game.current_game
    @mode = params[:mode]
  end

  get '/' do
    erb :index
  end

  get '/name' do
    @mode = params[:mode]
    erb :name
  end

  post '/name' do
    player_one = Player.new(params[:name_one])
    player_two = Player.new(params[:name_two])
    Game.create(player_one, player_two)
    redirect "/game"
  end

  get '/game' do
    erb :game
  end

  post '/choice' do
    @game.player_one.choose(params[:choice_one])
    @game.player_two.choose_random
    redirect "/result"
  end

  get '/result' do
    erb :result
  end

  run! if app_file == $0

end
