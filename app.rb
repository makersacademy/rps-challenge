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
    session[:player_choice] = params[:radioSelect].downcase.to_sym
    redirect '/result'
  end

  get '/result' do
    @game = Game.new(session[:player_choice], ComputerWeaponChoice.new.choice)
    erb :result
  end

end
