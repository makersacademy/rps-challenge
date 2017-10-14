require 'sinatra/base'
require './lib/registration.rb'

class Rps < Sinatra::Base
  enable :sessions

  get '/' do
    erb(:form)
  end

  post '/name' do
    # p params

    session[:player_name] = params[:player_name]
    redirect '/name'
  end

  get '/name' do
    @player_name = session[:player_name]

    erb(:display)
  end
end
