require 'sinatra/base'
require './lib/player'
require './lib/game'
require './lib/computer'

class RockPaperScissors < Sinatra::Base
  enable :sessions

  get '/' do
    erb :index
  end

  post '/name' do
    player = Player.new(params[:player_name])
    @game = Game.create(player)
    redirect '/play'
  end

  get '/play' do
    @game = Game.instance
    erb :play
  end

  post '/choice' do
    session[:choice] = params[:choice]
    redirect '/results'
  end

  get '/results' do
    @game = Game.instance
    @choice = session[:choice]
    erb :results
  end

  run! if app_file == $0
end
