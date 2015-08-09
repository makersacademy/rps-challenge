require 'sinatra/base'
require 'rockpaperscissors'

class Rsp_web < Sinatra::Base

  enable :sessions

  get '/' do
    erb :index
  end

  get '/welcome' do
  	erb :welcome
  end

  get '/NewGame' do
  	erb :NewGame
  end

  post '/' do
  	session[:name] = params[:name]
  	if session[:name] == ""
  		redirect '/' 
  	else
  		redirect '/welcome'
  	end
  end


  set :views, Proc.new { File.join(root, "..", "views") }
  # start the server if ruby file executed directly
  run! if app_file == $0
end
