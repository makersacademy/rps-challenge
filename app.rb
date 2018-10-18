require 'sinatra/base'
require './lib/model.rb'

class Controller < Sinatra::Base
  enable :sessions

  get '/' do
    erb :index
  end

  post '/names' do
    session[:name] = params[:player_name]
    # redirect '/greet'
  end

  run! if app_file == $0

end