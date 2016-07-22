require 'sinatra/base'
# require_relative './lib/player.rb'

class RPS < Sinatra::Base
  enable :sessions

  get '/' do
    erb :name_form
  end

  post '/names' do
    redirect '/play'  
  end
