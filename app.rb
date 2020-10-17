require 'sinatra/base'
require './lib/game.rb'

class RockPaperScissors < Sinatra::Base

  enable :sessions

  get '/' do
    erb :index
  end

  post '/store-name' do
    session[:name] = params[:name]
    redirect to '/greet'
  end

  get '/greet' do
    erb :greeting
  end

  post '/input-choice' do
    session[:choice] = params[:selection]
    session[:game] = Game.new(session[:choice])
    session[:winner] = session[:game].play_rps
    redirect to '/show-winner'
  end

  get '/show-winner' do
    erb :winner
  end

  run! if app_file == $0
end
