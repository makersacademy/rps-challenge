require 'sinatra/base'
require 'sinatra/reloader'

class RPS < Sinatra::Base
  enable :sessions
  configure :development do
    register Sinatra::Reloader
  end

  get '/' do
    erb :index
  end

  post '/name' do
    session[:namegiven] = params[:username]
    redirect '/play'
  end

  get '/play' do
    @name = session[:namegiven]
    erb :play
  end

  post '/move' do
    session[:tool_select] = params[:select]
    redirect '/result'
  end

  get '/result' do
    @tool_selected = session[:tool_select]
    @name = session[:namegiven]
    @comp_selected = ['rock','paper','scissors'].sample
    erb :result
  end

  run! if app_file == $0
end
