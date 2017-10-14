require 'sinatra/base'
require './lib/game.rb'

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
  p params
    erb(:display)
  end

  post '/receive_RPS' do
   p params
   session[:response] = params[:response]
   redirect '/result'

  end

  get '/result' do
    @player_selection = session[:response]
    erb(:result)
  end

end
