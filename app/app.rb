require 'sinatra/base'
require_relative '../lib/game.rb'

class RockPaperScissors < Sinatra::Base

  enable :sessions
  
  get '/' do
    erb :index
  end

  post '/player' do
    session[:player] = params[:player]
    redirect '/weapons'  
  end

  get '/weapons' do
    @player = session[:player]
    @player_weapon = session[:weapon]
    @computer_weapon = Game.choose_weapon
    erb :weapons
  end

  post '/weapons' do
    session[:weapon] = params['weapon']
    redirect '/weapons'
  end

  run! if app_file == $0
end
