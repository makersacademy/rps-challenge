require 'sinatra/base'
require './lib/opponent.rb'


class RPS < Sinatra::Base
  enable :sessions


  get "/" do
    erb :index
  end

  post '/play' do
    @name = params[:name]
    erb :play
  end

  post '/move' do
    @move = params[:move]
    @opponent = Opponent.new
    erb :move
  end
end
