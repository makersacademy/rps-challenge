require 'sinatra/base'
require_relative 'lib/player'

class RockPaperScissors < Sinatra::Base
  set :session_secret, 'super secret'
  enable :sessions

  get "/" do
    erb :index
  end

  post "/play" do
    @player = params[:player]
    erb :play
  end

  get '/move' do
    @player = $player
    @player.move
    erb :move
    redirect '/results'
  end

  get '/secret' do
    'This is a secret page'
  end

  run! if app_file == $0
end
