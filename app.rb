require 'sinatra/base'

class RPSApp < Sinatra::Base
  enable :sessions

  get '/' do
    erb(:registration)
  end

  post '/rps-config' do
    session[:name] = params[:name]
    redirect '/rps-game'
  end

  get '/rps-game' do
    @name = session[:name]
    erb(:game)
  end
end
