require 'sinatra/base'
require './lib/move'

class RPS < Sinatra::Base

  enable :sessions
  set :session_secret, "Our secret session"

  get '/' do
    erb(:index)
  end

  post '/rps' do
    @player = params[:name]
    erb(:rps)
  end

  get '/rock' do
    @robo_move = Move.new.random
    erb(:rock)
  end

end
