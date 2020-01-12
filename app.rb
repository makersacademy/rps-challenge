require 'sinatra/base'


class Rps < Sinatra::Base

  enable :sessions
  
  get '/' do
    erb :index
  end

  post '/play' do
    session[:name] = params[:name]
    @opponent = "COMPUTER"
    erb :play
  end

  post '/result' do 
    @name = session[:name]
    session[:move] = params[:move]
    @opponent = "COMPUTER"
    @computer_move = "Rock"
    erb :result
  end

  run! if app_file == $0

end