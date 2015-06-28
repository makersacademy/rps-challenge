require 'sinatra/base'
require './lib/game'

class RPSOnline < Sinatra::Base
  
  set :views, proc { File.join(root,'..','views') }
  enable :sessions

  get '/' do
    erb :homepage
  end

  get '/start_game' do
    erb :start_game
  end

  post '/start_game' do
    @user = params[:name]
    if @user == nil or @user == ''
      erb :start_game
    else
      erb :new_game
    end
  end

  get '/battlefield' do
    

  end





  # start the server if ruby file executed directly
  run! if app_file == $0
end
