require 'sinatra/base'
require './lib/game'
class Play < Sinatra::Base
  get '/' do
    erb :getname
  end

  get '/thegame' do
    erb :thegame
  end

  post '/thegame' do
    @name = params[:name]
    erb :thegame

  end

  get '/compare' do
    erb :compare
  end

  post '/compare' do


    erb :compare
  end
end
