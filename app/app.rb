require 'sinatra/base'
require_relative '../lib/player'

class RPS < Sinatra::Base
  enable :sessions

  get '/' do
    erb :index
  end

  post '/name' do
    session[:player] = Player.new(params[:player_name])
    redirect to '/choice'
  end

  get '/choice' do
    @player = session[:player]
    erb :choice
  end
end
