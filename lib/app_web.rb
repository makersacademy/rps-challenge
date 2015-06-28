require 'byebug'
require 'sinatra/base'
require_relative 'game'

class AppWeb < Sinatra::Base

  enable :session

  run! if app_file == $0
  set :views, proc { File.join(root, '..', 'views') }
 
  get '/' do
    erb :index
  end

  post '/name' do
    session[:user] = params[:name]

    erb :start_game
  end

  post '/set_up_game' do
    byebug
  end

end