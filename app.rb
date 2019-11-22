require 'sinatra/base'

class RockPaperScissors < Sinatra::Base

  enable :sessions

  get '/' do
    erb :index
  end

  post '/' do
    @user_name = params[:user_name]
    redirect '/round'
  end

  post '/round' do
    @user_name = params[:user_name].capitalize
    erb :round
  end

  run! if app_file == $0

end
