require 'sinatra/base'
require './lib/game'

class RPS < Sinatra::Base
  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/name' do
    session[:name] = params[:name]
    redirect '/play'
  end

  get '/play' do
    @name = session[:name].capitalize
    erb(:play)
  end

   post '/choice' do
     session[:choice] = params[:choice]
     redirect '/rps'
   end

  get '/rps' do
    @name = session[:name].capitalize
    @choice = session[:choice]
    erb(:rps)
  end

  run! if app_file == $0

end
