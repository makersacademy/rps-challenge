require 'sinatra/base'

class Rps < Sinatra::Base
  get '/' do
    erb :index
  end

  post '/user_name' do
    @user_name = params[:user_name]
    erb :user_name
  end

  run! if app_file == $0
end
