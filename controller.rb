require 'sinatra/base'

class RPS < Sinatra::Base

  enable :sessions

  get '/' do
    @player1_name = params[:player1_name]
    erb(:index)
  end

  post '/name' do
    p params
    @player1_name = params[:player1_name]
    session[:player1_name] = @player1_name
    redirect to('/play')
  end

  get '/play' do
    @player1_name = session[:player1_name]
    erb(:play)
  end

end
