require 'sinatra/base'

class Game < Sinatra::Base

  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/name' do
    session[:player] = params[:name]
    redirect to('/play')
  end

  get '/play' do
    @player = session[:player]
    erb(:play)
  end

  post '/move' do
    @player = session[:player]
    redirect to('/play')
  end

  run! if app_file == $0
end
