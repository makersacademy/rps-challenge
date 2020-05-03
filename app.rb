require 'sinatra/base'

class RPS < Sinatra::Base
  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/play' do
    session[:player] = params[:player]
    redirect '/play'
  end

  get '/play' do
    @player = session[:player]
    erb(:play)
  end

  post '/result' do
    session[:move] = params[:move]
    redirect '/result'
  end

  get '/result' do
    @player = session[:player]
    @move = session[:move]
    erb(:result)
  end

  run! if app_file == $0
end
