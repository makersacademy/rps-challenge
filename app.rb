require 'sinatra/base'
require './lib/game'
require './lib/player'

class RPS < Sinatra::Base

  set :views, File.dirname(__FILE__) + '/lib/views'
  set :public_folder, File.dirname(__FILE__) + '/lib/public'

  get '/' do
    erb :index
  end

  post '/choose' do
    p1 = [params[:player_1_name], params[:player_1_selection]]
    p2 = [params[:player_2_name], params[:player_2_selection]]
    @game = Game.create(p1, p2)
    redirect '/play'
  end

  get '/play' do
    @game = Game.instance
    erb :play
  end

  get '/result' do
    @game = Game.instance
    result = @game.battle
    redirect "/#{result.to_s}"
    # erb :result
  end

  get '/draw' do
    @game = Game.instance
    @result = @game.battle
    erb :draw
  end

  get '/player-1-wins' do
    @game = Game.instance
    @result = @game.battle
    erb :"player-1-wins"
  end

  get '/player-2-wins' do
    @game = Game.instance
    @result = @game.battle
    erb :"player-2-wins"
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
