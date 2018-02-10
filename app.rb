require 'sinatra/base'
require_relative 'lib/game'

class RockPaperScissors < Sinatra::Base

  get '/' do
    erb :index
  end

  post '/names' do
    @game = Game.create(Player.new(params[:name_1]))
    redirect 'play'
  end

  get '/play' do
    @game = Game.instance
    erb :play
  end

  get '/game_over' do
    @game = Game.instance
    erb :game_over
  end

  run! if app_file == $0
end
