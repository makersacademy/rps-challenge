require 'sinatra/base'
require 'game'
require 'weapon'

class RockPaperScissors < Sinatra::Base
  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/name' do
    session[:player_1_name] = params[:player_1_name]
    redirect '/play'
  end

  get '/play' do
    @player_1_name = session[:player_1_name]
    erb(:play)
  end

  get '/result' do
    @weapon = params[:player_choice]

    @game = Game.new
    erb(@game.result)
  end
end