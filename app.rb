require 'sinatra/base'
require './lib/registration.rb'

class Rps < Sinatra::Base

  get '/' do
    erb(:form)
  end

  post '/name' do
    # p params
    @player_name = params[:player_name]
    erb(:display)
  end
end
