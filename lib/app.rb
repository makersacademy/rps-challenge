require 'sinatra'

class RPS < Sinatra::Base

  get '/' do
    erb(:register)
  end

  post '/user_registered' do
    @username = params[:username]
    erb(:user_registered)
  end
end
