require 'sinatra/base'
require_relative 'game'

class RPSWeb < Sinatra::Base

  enable :sessions
  set :views, proc { File.join(root, '..', 'views') }

  get '/' do
    erb :index
  end

  post '/new_player' do
    session[:name] = params[:name]
    redirect '/new_player'
  end

  get '/new_player' do
    @player = session[:name]
    erb :new_player
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
