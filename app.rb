require 'sinatra/base'

class Rps < Sinatra::Base
  enable :sessions

  get '/' do
    erb :index
  end

  post '/player' do
    session[:player] = params[:player]
    redirect '/play'
  end

  get '/play' do
    @player = session[:player]
    erb :play
  end

  run! if app_file == $0
end
