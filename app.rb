require 'sinatra/base'
require './lib/machine'

class Rps < Sinatra::Base
  enable :sessions

  get '/' do
    erb :index
  end

  post '/names' do
    session[:player_1_name] = params[:player_1_name]
    redirect '/play'
  end

  get '/play' do
    @player_1_name = session[:player_1_name]
    #session[:weapon] = params[:weapon]
    erb :play
  end

  post '/game' do
    @player_1_name = session[:player_1_name]
    @weapon = params[:weapon]
    @machine = Machine.new.choose_weapon
    erb :game
  end




  run! if app_file == $0
end
