require './lib/game'
require './lib/computer_weapon_choice'
require 'sinatra/base'

class RockPaperScissors < Sinatra::Base

  enable :sessions


  get '/' do
    erb :index
  end

  post '/player_name' do
    session[:player_name] = params[:player_name]
    redirect '/play'
  end

  get '/play' do
    @player_name = session[:player_name]
    erb :play
  end

  post '/player_choice' do
    @game = Game.create(params[:radioSelect].downcase.to_sym, ComputerWeaponChoice.new.choice)
    redirect '/result'
  end

  get '/result' do
    @game = Game.instance
    erb :result
  end

end
