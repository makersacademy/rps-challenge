require 'sinatra/base'

class RPS < Sinatra::Base

enable :sessions

  get '/' do
    erb :index
  end

  post '/names' do
    session[:marketeer] = params[:marketeer]
    redirect to('/play')
  end

  get '/play' do
    @marketeer = session[:marketeer]
    erb :play
  end

  run! if app_file == $0

end
