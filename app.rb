require 'sinatra/base'
require './lib/opponent.rb'

class RPS < Sinatra::Base
  enable :sessions

  before do
    @opponent = Opponent.new
  end

  get '/' do
    erb(:index)
  end

  post '/play' do
    @name = params[:name]
    erb(:play)
  end

  post '/result' do
    @move = params[:move]
    erb(:result)
  end

end
