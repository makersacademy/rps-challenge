require 'sinatra/base'
require_relative 'game'

class RpsWeb < Sinatra::Base
  set :views, proc { File.join(root, '..', 'views') }
  enable :sessions

  get '/' do
    erb :index
  end

  get '/registration' do
    erb :registration
  end

  get '/choose-mode' do
    session[:name_1] = params[:name]
    @name_1 = session[:name_1].capitalize
    redirect '/registration' if session[:name_1] == ''
    erb :mode
  end

  get '/single-player' do
    erb :singlemode
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
