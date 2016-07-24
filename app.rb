require 'sinatra/base'
require './lib/player'
require './lib/game'

class RPS < Sinatra::Base
  enable :sessions

  get '/' do
    erb(:home)
  end

  post '/names' do
    $player_1 = Player.new(params[:player_1_name])
    $player_2 = Player.new(params[:player_2_name])
    #@game = Game.create(player_1, player_2)
    redirect '/vs'
  end

  # before do
  #   @game = Game.instance
  # end

  get '/vs' do
    @player_1_name = $player_1.name
    @player_2_name = $player_2.name
    erb(:vs)
  end

  get '/choose_weapon' do
    erb(:choose_weapon)
  end

  get '/action' do
    @player_1_name = $player_1.name
    @player_2_name = $player_2.name
    erb(:action)
  end

  get '/outcome' do
    erb(:outcome)
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
