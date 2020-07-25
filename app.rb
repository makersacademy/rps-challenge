require 'sinatra'
require_relative './models/game'

class App < Sinatra::Base


  get '/' do
    erb :index
  end

  post '/new_user' do
    user_1 = User.new(params[:username_1])
    user_2 = params[:username_2].empty? ? User.new('Computer') : User.new(params[:username_2])
    p user_2
    @game = Game.create(user_1, user_2)
    redirect '/dashboard'
  end

  get '/dashboard' do
    @game = Game.play
    erb :dashboard
  end

end
