require 'sinatra/base'
require_relative "./lib/game"

class App < Sinatra::Base
  
  before do
    @game = Game.instance
  end

  get '/' do
    erb :index
  end

  post '/names' do
    @game = Game.new_game(params[:name])
    redirect '/play'
  end

  get '/play' do
    erb :play
  end
  
end


# def result
#   RULES[player_choice][computer.choice()] ? :win : :lose
# end

# get '/play' do
#   @game.player1_choice = params[:choice]
#   erb @game.result
# end