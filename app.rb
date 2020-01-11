require 'sinatra/base'
require './lib/game'

class Rps < Sinatra::Base
  enable :sessions

  get '/' do
    erb :index
  end

  post '/register_name' do
    session[:name] = params[:player_name]
    Game.create
    redirect '/play'
  end

  get '/play' do
    @name = session[:name]
    erb :play
  end

  post '/register_choice' do
    session[:choice] = params[:choice]
    redirect '/result'
  end

  get '/result' do
    @choice = session[:choice]
    @computer_choice = Game.instance.computer_choice
    @result = Game.instance.determine_result(@choice, @computer_choice)
    erb :result
  end

  run! if app_file == $0
end
