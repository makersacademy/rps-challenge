require 'sinatra/base'
require_relative './lib/game'

class RockPaperScissors < Sinatra::Base

  enable :sessions

  before do
  @game = Game.instance
  end

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
    erb(:game)
  end

  post '/turn' do
    @game.p1_move(params[:move])
    redirect '/result' if @game.player2_name == nil
    redirect "/multi"
  end

  get '/multi' do
    @result = @game.outcome
    erb(:multi)
  end

  post "/turn_multi" do
    @game.p2_move(params[:move])
    redirect '/result_multi'
  end

  get '/result' do
    @result = @game.outcome
    erb(:result)
  end

  get '/result_multi' do
    @result = @game.outcome
    erb(:result_multi)
  end

  run! if app_file == $0

end
