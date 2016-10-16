require 'sinatra'
require_relative './lib/game'

class Rps < Sinatra::Base

  before do
    @game = Game.instance
  end


  get '/' do
    user = User.new(params[:user_name])
    @game = Game.create(user)
    erb :index
  end

  post '/play' do
    @game.set_user_weapon("Rock")
    erb :play
  end



end
