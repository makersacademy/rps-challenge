require 'sinatra/base'
require_relative '../game_setup.rb'

class RPSWeb < Sinatra::Base
  enable :sessions

  get '/' do
    erb :index
  end

  post '/new-game' do
    session[:username] = params[:username]
    redirect '/play-game'
  end

  get '/play-game' do
    @username = session[:username]
    erb :play_game
  end

  get '/result' do
    erb :result
  end









  # start the server if ruby file executed directly
run! if app_file == $0
set :views, proc { File.join(root, '..', 'views') }
#Apparently this is the place to link to stylesheets ??? Not currently working!
# set :styles, proc { File.join(root, '..', 'styles/styles.css') }
end
