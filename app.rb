require 'sinatra/base'
require './model/player.rb'
require './model/auto.rb'

class RPS < Sinatra::Base

  get '/' do
    erb :index
  end

  post '/name' do
    @name = params[:name]
    erb :names
  end

  get './play' do
    erb :play
  end

  run! if app_file == $0

end