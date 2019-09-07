require 'sinatra/base'
require_relative 'lib/player'
require_relative 'lib/game'

class Fight < Sinatra::Base
  enable :sessions

  before do
    @game = Game.instance
  end

  get '/' do
    erb :index
  end

  post '/names' do
    session[:player_1_name] = params[:player_1_name]
    redirect '/play'
  end

  get '/play' do
    @player_1_name = session[:player_1_name]
    erb :play
  end

    run! if __FILE__ == $PROGRAM_NAME
  end
