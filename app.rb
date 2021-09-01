require 'sinatra/base'
require 'sinatra/reloader'
require_relative 'lib/game'
require_relative 'lib/computer'

class Rps < Sinatra::Base
  configure :development do
    register Sinatra::Reloader
  end

  get '/' do
    erb :index
  end

  post '/welcome' do
    @name = params[:name]
    erb :welcome
  end

  get '/win' do
    @name = params[:name]
    erb :win
  end

  get '/lose' do
    game = Game.new
    computer = Computer.new
    @player_score = game.player_score
    @result1 = game.result1
    
    erb :lose
  end

  run! if app_file == $0
end
