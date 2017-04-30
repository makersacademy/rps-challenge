require 'sinatra/base'
require './lib/user'
#require './lib/rockpaperscissors'

class Game < Sinatra::Base
  enable :sessions

get '/' do
  erb (:index)
end

post '/users' do
  $user  = User.new(params[:user])
  p params
  redirect '/play'
end

get '/play' do
  @user = $user.name
  p @user
  erb(:play)
end

get '/opponent_turn' do
  p params
  @option1 = params[:option]
  erb(:opponent_turn)
end


  run! if app_file == $0
end
