require 'sinatra/base'
require './lib/game'

class RPS < Sinatra::Base

  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/name' do
    player_1 = Player.new(params[:player_1_name])
    player_2 = Player.new('Opponent')
    @game = Game.create(player_1, player_2)
    redirect '/play'
  end

  before do
    @game = Game.instance
  end

  get '/play' do
    erb(:play)
  end

post '/choice' do
  session[:choice] = params[:choice]
  redirect '/result'
end

get '/result' do
  @choice = session[:choice]
  @player_2_choice = @game.auto_turn
  erb(:result)
end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
