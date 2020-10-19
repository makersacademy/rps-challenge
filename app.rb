require 'sinatra/base'
require './lib/game.rb'

class RockPaperScissors < Sinatra::Base

  enable :sessions

  get '/' do
    erb :index
  end

  get '/enter-name' do
    erb :name_form
  end

  get '/multiplayer' do
    session[:multiplayer] = 1
    erb :multiplayer
  end

  post '/store-name' do
    session[:name] = params[:name]
    if session[:multiplayer]
      session[:multiplayer] = nil
    end
    redirect to '/greet'
  end

  post '/store-multi-name' do
    session[:name_1] = params[:name_1]
    session[:name_2] = params[:name_2]
    redirect to '/greet'
  end

  get '/greet' do
    erb :greeting
  end

  post '/greet' do
    erb :greeting
  end

  post '/input-choice' do
    unless session[:multiplayer] || !session[:multiplayer].nil?
      session[:choice] = params[:selection]
      redirect to '/single-player-game'
    end

    if session[:multiplayer] == 2
      session[:choice_1] = params[:selection]
      redirect to '/greet'
    else
      session[:choice_2] = params[:selection]
      redirect to '/multiplayer-game'
    end
  end

  get '/single-player-game' do
    session[:game] = Game.new(session[:choice])
    session[:winner] = session[:game].play_rps
    redirect to '/show-winner'
  end

  get '/multiplayer-game' do
    session[:game] = Game.new(session[:choice_1], session[:choice_2])
    session[:winner] = session[:game].play_rps
    redirect to '/show-multi-winner'
  end

  get '/show-winner' do
    erb :winner
  end
  
  get '/show-multi-winner' do
    erb :multiplayer_winner
  end

  run! if app_file == $0
end
