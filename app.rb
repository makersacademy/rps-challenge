require 'sinatra/base'
require 'sinatra/reloader'
require './lib/start_game.rb'
require './lib/results.rb'

class RockPaperScissor < Sinatra::Base
  configure :development do
    register Sinatra::Reloader
  end

  enable :sessions

  get "/" do
    erb(:index)
  end

  get '/names' do
    session[:player_name] = params[:PlayerName]
    erb(:names)
  end

  get '/start_game' do
    erb(:start_game)
  end

  get '/results' do
    @player_name = session[:player_name]
    @move = params[:move]
    game = StartGame.new
    @cpu_move = game.random_move
    @result = Results.new(@player_name.to_sym, @move.to_sym, @cpu_move.to_sym)
    erb(:results)
  end

  run! if app_file == $0
end
