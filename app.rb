require 'sinatra/base'
require './lib/game'
require './lib/player'

class RockPaperScissors < Sinatra::Base

  enable :sessions

  get '/' do
    erb :index
  end

  post '/name' do
    # @name = params[:name]
    # session[:name] = params[:name]
    $player1 = Player.new(params[:name])
    redirect '/play'
  end

  get '/play' do
    # @name = params[:name]
    # @name = session[:name]
    @name = $player1.name 
    erb :play
  end

  run! if app_file == $0
end
