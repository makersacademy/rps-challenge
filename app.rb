require 'sinatra/base'

class Player < Sinatra::Base
  set :session_secret, "something"

  get '/' do
    erb(:index)
  end

  # post '/info' do
  #   session[:name] = params[:name]
  #   redirect '/'
  # end
end

