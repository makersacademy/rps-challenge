require 'sinatra/base'

class RockPaperScissors < Sinatra::Base
  enable :sessions

  get '/' do
    erb :index
  end

  post '/save_name' do
    session[:user_name] = params[:name]
    erb :saved_name
  end
end
