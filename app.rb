require 'sinatra'
require './lib/player'

class RockPaperScissors < Sinatra::Base
  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/name' do
    session[:player] = Player.new(params[:player_name])
    redirect '/play'
  end

  get '/play' do
    @player = session[:player]
    erb(:play)
  end

  run! if app_file == $0
end
