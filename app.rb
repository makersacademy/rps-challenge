require "sinatra/base"

class RPS < Sinatra::Base
  enable :sessions

  get '/' do
    erb :index
  end

  post '/name' do
    session[:name] = params[:name]
    erb :index
    redirect ('play')
  end

  get '/play' do
    @name = session[:name]
    @rock = session[:rock]
    @weapon = @rock
    erb :play
  end

  post '/fight' do
    session[:rock] = params[:rock]
    redirect '/play'
  end

end