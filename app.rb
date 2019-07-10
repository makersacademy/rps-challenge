require 'sinatra/base'
require_relative 'lib/player'
# require_relative 'lib/game'

class Game < Sinatra::Base
  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/select' do
    session[:player1] = Player.new(params[:player_1_name])
    redirect '/choose'
  end

  get '/choose' do
    @player1 = session[:player1]
    erb(:choose)
  end

  run! if app_file == $0
end
