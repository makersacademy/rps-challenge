require 'sinatra/base'
require_relative 'player'

class RockPaperScissors < Sinatra::Base
  enable :sessions
  
  get '/' do
    erb :index
  end

  post "/play" do
    session[:player_1] = Player.new(params['player-name'])
    @player_1 = session[:player_1]
    erb :play
  end

  post '/match' do
    session[:player_1].play_hand(params[:choice])
    @player_1 = session[:player_1]
    redirect '/match'
  end

  get '/match' do
    @player_1 = session[:player_1]
    erb :match
  end
  run! if app_file == $0
end
