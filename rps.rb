require 'sinatra'

require 'sinatra/base'

class RPS < Sinatra::Base
  enable :sessions

  get '/' do
    erb :home
  end

  post '/names' do
    session[:player1] = params[:player1]
    session[:player2] = params[:player2]
    redirect '/players'
  end

  get '/players' do
    @player1 = session[:player1]
    @player2 = session[:player2]
    erb :players
  end

  get '/rock' do
    'You chose rock!'
  end

  run! if app_file == $0
end
