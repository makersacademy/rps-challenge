require 'sinatra/base'
require './lib/player.rb'
require './lib/game.rb'

class RockPaperScissors < Sinatra::Base
  enable :sessions

  before do
    @game = Game.instance
  end

  get '/' do
    erb :index
  end

  post '/name' do
    p params
    player_1 = Player.new(params[:player_1])
    player_2 = Player.new(params[:player_2])
    @game = Game.create(player_1, player_2)
    redirect '/player_1'
  end

  post '/player_1_choice/:id' do
    p params
    @game.player_1.set_choice(params["id"])
    redirect '/player_2'
  end

  post '/player_2_choice/:id' do
    p params
    @game.player_2.set_choice(params["id"])
    redirect '/result'
  end
  
  get '/player_1' do
    erb :player_1
  end

  post '/player_1' do
    erb :player_1
  end

  get '/player_2' do
    erb :player_2
  end

  get '/result' do
    @outcome = @game.outcome
    erb :result
  end
  
  run! if app_file == $0
end
