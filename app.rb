require 'sinatra/base'
require './lib/game'
class RockPaperScissors < Sinatra::Base

  get '/' do
    erb(:index)
  end

  post '/name' do
    @player_name = params[:player_name]
    erb(:play)
  end

  post '/move' do
    $move = params[:move]
    @game = Game.new($move)
    erb(:result)
  end

  run! if app_file == $0
end
