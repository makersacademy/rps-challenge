require 'sinatra/base'
require_relative './lib/game'

class RockPaperScissors < Sinatra::Base

  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/game' do
    player1name = params[:name1]
    player2name = params[:name2]
    Game.create(player1name, player2name)
    redirect '/game'
  end

  get '/game' do
    @game = Game.instance
    erb(:game)
  end

  post '/turn' do
    @game = Game.instance
    @game.p1_move(params[:move])
    redirect '/result' if Game.instance.player2_name == nil
    redirect "/multi"
  end

  get '/multi' do
    @game = Game.instance
    @result = @game.outcome
    erb(:multi)
  end

  post "/turn_multi" do
    @game = Game.instance
    @game.p2_move(params[:move])
    redirect '/result_multi'
  end

  get '/result' do
    @game = Game.instance
    @result = @game.outcome
    erb(:result)
  end

  get '/result_multi' do
    @game = Game.instance
    @result = @game.outcome
    erb(:result_multi)
  end

  run! if app_file == $0

end
