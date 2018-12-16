require 'sinatra/base'
require './lib/player.rb'

class Rps < Sinatra::Base
  enable :sessions

  get '/' do
    erb :index
  end

  post '/name' do
    player = Player.new(params[:player_name])
    session[:player] = player
    redirect '/play'
  end

  get '/play' do
    @player_name = session[:player].name
    erb :play
  end

  post '/selection' do
    @player_name = session[:player].name
    @player = session[:player]
    @player.selected_option = params[:option]
    erb :selection
  end

  run! if app_file == $PROGRAM_NAME
end
