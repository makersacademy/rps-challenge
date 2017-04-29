require 'sinatra/base'

class Rps < Sinatra::Base
  enable :sessions

  get '/' do
    erb :index
  end

  post '/name' do
    session[:player] = params[:player]
    @player = session[:player]
    erb :play
  end

  post '/play' do
    @player = session[:player]
    @option = params[:option]
    erb :option
  end

  run! if app_file == $0

end
