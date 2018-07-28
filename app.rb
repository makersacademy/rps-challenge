require 'sinatra/base'

class RPS < Sinatra::Base

  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/names' do
    session[:player_name] = params[:player_name]
    redirect '/play'
  end

  get '/play' do
    @player = session[:player_name]
    erb(:play)
  end

  get '/battle' do
    erb(:battle)
  end

  get '/rock' do
    @choice = "rock"
    #game.new(rock)
    erb(:rock)
  end

  get '/paper' do
    @choice = "paper"
    erb(:paper)
  end

  get '/scissors' do
    @choice = "scissors"
    erb(:scissors)
  end

  run! if app_file == $0
end
