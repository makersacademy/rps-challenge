require 'sinatra/base'
require './lib/player'
require './lib/game'

class RPS < Sinatra::Base
  enable :sessions

  before do
    @game = Game.instance
  end
  
  get '/' do
    erb(:index)
  end

  post '/names' do
    session[:name] = params[:name]
    @game = Game.create(Player.new(session[:name]))
    redirect '/play'
  end

  get '/play' do
    erb(:play)
  end

  post '/move' do
    session[:move] = params[:move]
    redirect '/result'
  end
  
  get '/result' do
    @player_move = session[:move]
    @game_move = @game.rock_paper_scissors
    @result = @game.result(@player_move, @game_move)
    erb(:result)
  end

  run! if app_file == $0
end