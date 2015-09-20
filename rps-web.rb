require 'sinatra/base'

class RPSWeb < Sinatra::Base

  get '/' do
    erb :index
  end

  post '/new_game' do
    session[:user_name] = params[:user_name]
    @user_name = session[:user_name]

    erb :new_game
  end

  # start the server if ruby file executed directly
  run! if app_file == $0

  set :views, proc { File.join(root, 'views') }
end
