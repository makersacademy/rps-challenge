require 'sinatra/base'
require './lib/computer'

class RPS < Sinatra::Base
  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/name' do
    session[:player] = params[:player]
    redirect '/play'
  end

  get '/play' do
    @player_name = session[:player]
    @player_weapon = session[:weapon]
    @computer_weapon = session[:computer_weapon]
    erb(:play)
  end

  post '/play' do
    session[:weapon] = params[:weapon]
    session[:computer_weapon] = Computer.new.weapon
    redirect '/play'
  end

   run! if app_file == $0

end
