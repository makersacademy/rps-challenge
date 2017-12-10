require 'sinatra/base'
require 'game'

class RPS < Sinatra::Base
  enable :sessions

  get '/' do
    erb(:welcome)
  end

  get '/name-select' do
    erb(:names)
  end

  get '/play' do
    @player_name = session[:player_name]
    @choices = session[:choices]
    erb(:play)
  end

  post '/names' do
    session[:player_name] = params[:player_name]
    redirect '/play'
  end

  get '/choice' do
    @game = Game.new
    session[:choices] = [params[:choice], @game.computer_choice]
    redirect '/play'
  end

  run! if app_file == $0
end
