require 'sinatra/base'
require './app/game.rb'

class RPSWeb < Sinatra::Application
  before do
    @game = Game.instance

  end
  get '/' do
    erb :index
  end

  post '/name' do
    @game = Game.create(Player.new(params[:player_1_name]), Player.new(params[:player_2_name]))
    redirect '/play1'
  end

  get '/play1' do
    erb :play1
  end

  get '/play2' do
    erb :play2
  end

  get '/results' do
    erb :results
  end

  post '/play_player_1' do
    @game.play_1(params[:weapon]) if @game.player_1.valid_weapon?(params[:weapon])
    redirect '/play2'
  end

  post '/play_player_2' do
    @game.play_2(params[:weapon]) if @game.player_2.valid_weapon?(params[:weapon])
    redirect '/results'
  end
end
