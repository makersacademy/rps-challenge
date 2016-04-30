require 'sinatra/base'
require './lib/player'
require './lib/game'

class RPSGame < Sinatra::Base
  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/name' do
    session[:name] = params[:player_name]
    p params
    p session
    redirect '/play'
  end

  get '/play' do
    @name = session[:name]
    erb(:play)
  end

  post '/choice' do

    session[:choice] = params[:choice]
    p params
    p session
    redirect '/result'
  end

  get '/result' do
    p params
    @choice = session[:choice]
    erb(:result)
  end

  run! if app_file == $0

end
