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

  post '/rock' do
    "This is rock"
  end

  post '/paper' do
    "This is paper"
  end

  post '/scissors' do
    "This is scissors"
  end

run! if $0 == __FILE__
end
