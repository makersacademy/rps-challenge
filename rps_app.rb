require 'sinatra/base'
require 'game'

class RPSApp < Sinatra::Base
  enable :sessions

  get '/' do
    erb :index
  end

  post '/names' do
    player = Player.new(params[:player_name])
    session[:game] = Game.new(player)
    redirect '/play'
  end

  get '/play' do
    @game = session[:game]
    erb :play
  end

  get '/rock' do
    @game = session[:game]
    @game.play(:rock)
    erb :rock
  end

  run! if app_file == $0
end
