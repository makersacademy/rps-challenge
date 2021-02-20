require 'sinatra/base'

class Rps < Sinatra::Base
enable :sessions
  get '/' do
    erb(:index)
  end

  post '/names' do
    session[:player1] = params[:player1]
    redirect '/move'
  end

  get '/move' do
    @player1 = session[:player1]
    erb(:move)
  end


  run! if app_file == $0

end
