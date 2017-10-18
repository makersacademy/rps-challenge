require 'sinatra/base'

class Rps < Sinatra::Base
  get '/' do
    erb(:index)
  end

  enable :sessions

  post '/name' do
    session[:name] = params[:name]
    redirect '/play'
  end

  get '/play' do
    @player_name = session[:name]
    erb(:play)
  end

  post '/game' do
    player = session[:name]
    player_choice = params[:weapons]
    @player = Player.new(player, player_choice)
  end

  run! if app_file == $0
end
