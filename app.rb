require 'sinatra/base'
require 'sinatra'

class Battle < Sinatra::Base
  get '/' do
    erb :index
  end

  post '/name' do
    @player_name = params[:player_name]
    erb :play
  end

  get '/result' do
    @choice = params[:choice]
    @bot_choice = ["Rock", "Paper", "Scissors"].sample
    erb :result
  end

  run! if app_file == $0
end
