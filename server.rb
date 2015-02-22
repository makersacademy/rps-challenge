require 'sinatra/base'
require 'player'
require 'element'

class Rock_paper_scissors < Sinatra::Base
  
  get '/' do
    erb :index
  end

  post '/' do
    @user_name = params[:name]
    erb :index
  end

  get '/game' do
    erb :game
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
