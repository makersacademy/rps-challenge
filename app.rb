require 'sinatra/base'

class Rps < Sinatra::Base
  enable :sessions
  get '/' do
    erb(:index)
  end

  post '/name' do
    session[:player] = params[:player]
    redirect '/play'
  end

  get '/play' do
    @name = session[:player]
    erb(:play)
  end

  post '/game-on' do
     @value = params[:choice]
      redirect '/play'
  end

  run! if app_file == $0
end
