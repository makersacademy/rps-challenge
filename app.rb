require 'sinatra/base'
require_relative './lib/game.rb'

class RockPaperScissors < Sinatra::Base
  enable :sessions
  set :session_secret, 'super-secret'
  before { @game = Game.game }

  get '/' do
    erb :index
  end

  post '/save-name' do
    Game.create_game({ player_1: HumanPlayer.new(params[:name]) })
    redirect '/play'
  end

  post '/choice' do
    session[:choice] = params[:choice]
    redirect '/result'
  end

  get '/result' do
    erb :result
  end

  get '/play' do
    erb :play
  end

  run! if app_file == $0
end
