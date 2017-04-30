require 'sinatra/base'
require './lib/player'

class RPSGame < Sinatra::Base
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
    @choice = session[:choice]
    erb(:play)
  end

  post '/play' do
    session[:choice] = params[:shape]
    redirect '/play'
  end

run! if app_file == $0

end
