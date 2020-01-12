require 'sinatra/base'

class RPS < Sinatra::Base

  get '/' do
    erb :home
  end

  post '/enter_name' do
    @user = params[:name]
    erb :play
  end

  run! if app_file == $0
end
