require 'sinatra'
require 'sinatra/base'
#require_relative class_file.rb


class RPS < Sinatra::Base
  enable :sessions
  set :session_secret, 'My Secret Session'

  get '/' do
    erb(:index)
  end

  post '/names' do
    p params
    session[:p1_name] = params[:p1_name]
    session[:p2_name] = params[:p2_name]
    redirect '/game'
  end

  get '/game' do
    @p1_name = session[:p1_name]
    @p2_name = session[:p2_name]
    erb(:game)
  end

  run! if app_file == $0

end
