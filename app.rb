require 'sinatra/base'
require_relative 'lib/game'
require_relative 'lib/game_vs'

class RPS < Sinatra::Base
  get '/' do
    erb(:mode)
  end

  get '/game' do
    erb(:index)
  end

  post '/names' do
      Game.store = Game.new(params[:player])
      redirect '/play'
  end

  get '/play' do
    @game = Game.store
    erb(:play)
  end

  get '/result' do
    @game = Game.store
    @game.player.pick((params[:choice].to_sym))
    @game.choice
    erb @game.result
  end

  get '/game_vs' do
    erb(:index_vs)
  end

  post '/names_vs' do
      GameVs.store = GameVs.new(params[:player1], params[:player2])
      redirect '/play_vs'
  end

  get '/play_vs' do
    @game = GameVs.store
    erb(:play_vs)
  end

  get '/result_vs' do
    @game = GameVs.store
    @game.player1.pick((params[:choice1].to_sym))
    @game.player2.pick((params[:choice2].to_sym))
    @game.choice
    erb @game.result
  end


  # start the server if ruby file executed directly
  run! if app_file == $0
end
