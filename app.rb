require 'sinatra'
require_relative './lib/game.rb'

class Rps < Sinatra::Base

  get '/' do
    erb :name_form
  end

  post '/play' do
    # create game object, using name input from form
    redirect '/rps'
  end
  
  get '/rps' do
    erb :rps
  end

end
