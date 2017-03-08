require 'sinatra/base'

class RPS < Sinatra::Base
enable :sessions

  get '/' do
    erb :index
  end

  post '/name' do
    session[:name] = params[:name]
    redirect '/play'
  end

  get '/play' do
    @name = session[:name]
    @weapon = session[:weapon]
    @opponent_weapon = session[:opponent_weapon]
    erb :play
  end

  post '/play' do
    session[:weapon] = params[:weapon]
    session[:opponent_weapon] = :rock
    redirect '/play'
  end




run! if app_file == $0
end
