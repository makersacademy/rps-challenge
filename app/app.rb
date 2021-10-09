require 'sinatra/base'
require 'sinatra/reloader'

class RockPaperScissors < Sinatra::Base
  
  configure :development do
    register Sinatra::Reloader
  end

  enable :sessions

  get '/' do
    erb :home
  end

  post '/name' do
    session[:name] = params[:name]
    redirect '/start'
  end

  get '/start' do
    @name = session[:name]
    erb :start
  end

  get '/classic' do
    @name = session[:name]
    erb :classic
  end

  post '/move' do
    session[:rps_select] = params[:rps_select]
    redirect '/result'
  end

  get '/result' do
    @rps_selection = session[:rps_select]
    erb :result
  end

  post '/summary' do
    redirect '/classic'
  end

  run! if app_file == $0
end
