require 'sinatra/base'
#require 'shotgun'
#require_relative './lib/player'
#require_relative './lib/game'

class Rps < Sinatra::Base

  get '/' do
    erb :index
  end

  post '/name' do
     @p1 = params[:player_name]
     erb :play
   end

end
