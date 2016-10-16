require 'sinatra'
require_relative './lib/game'

class Rps < Sinatra::Base

  before do
    @game = Game.instance
  end


  get '/' do
    # user = User.new(params[:user_name])
    user = User.new("bob")
    @game = Game.create(user)
    erb :index
  end

  post '/play' do
    # @game.set_user_weapon("Rock")
    # @username = @game.get_user_name
    # @name_in_lights = @game.get_user_name
    erb :play
  end
end
