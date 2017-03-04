$VERBOSE=nil

require 'sinatra/base'

class Rps < Sinatra::Base

enable :sessions

  get '/' do
    erb :index
  end

  post '/name' do
    session[:p1]=params[:PLAYER]
    redirect '/welcome'
  end

  get '/welcome' do
    @player1 = session[:p1]
    erb :welcome
  end

end
