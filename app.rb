require 'sinatra'

class RPS < Sinatra::Base

  enable :sessions

  get '/' do
    erb :index
  end

  post '/name' do
    session[:name]= params[:player_name]
    redirect '/play'
  end

  get '/play' do
      @name = session[:name]
    erb :play
  end

run! if $0 == __FILE__
end
