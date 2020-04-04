require "sinatra/base"

class RPS < Sinatra::Base
  enable :sessions

  get '/' do
    erb :index
  end

  post '/name' do
    session[:name] = params[:name]
    erb :index
    redirect 'play'
  end

  get '/play' do
    @name = session[:name]
    @rock = session[:rock]
    @paper = session[:paper]
    @scissors = session[:scissors]
    @weapon = @rock || @paper || @scissors
    erb :play
  end

  post '/fight' do
    session[:rock] = params[:rock]
    session[:paper] = params[:paper]
    session[:scissors] = params[:scissors]
    redirect '/play'
  end

end
