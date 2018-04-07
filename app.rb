require 'sinatra/base'
require_relative './lib/player.rb'

class RPS < Sinatra::Base

  enable :sessions

  get '/' do
    erb(:welcome)
  end

  post '/submit_name' do
    session[:player1] = Player.new(params[:name])
    redirect to('/play')
  end

  get '/play' do
    @player1_name = session[:player1].name
    erb:play
  end

end
