require 'sinatra/base'

class Rps < Sinatra::Base

  enable  :sessions

  get '/' do
    session[:choose] = nil
    erb(:index)
  end

  post '/name' do
    session[:name] = params[:name]
    redirect '/play'
  end

  get '/play' do
    @player = session[:name]
    @choose = session[:choose]
    erb(:play)
  end

  get '/select' do
    @choose = params[:choose]
    session[:choose] = @choose
    redirect '/play'
  end
  # start the server if ruby file executed directly
  run! if app_file == $0

end
