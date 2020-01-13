require 'sinatra/base'
require './lib/player.rb'

class RPS < Sinatra::Base

  get '/' do
    erb :home
  end

  post '/enter_name' do
    $user = Player.new(params[:name], params[:choice])
    p $user
    redirect '/play'
  end

  get '/play' do
    @player = $user
    erb :play
  end
    

  get '/selection' do
    erb :out_come
  end

end

#   post '/enter_name' do
#     session[:user] = Player.new(params[:name],params[:choice])
#     redirect '/play'
#   end

#   get '/play' do
#     @user =  session[:user]
#     erb :play
#   end

#   get '/selection' do
#     erb :rock
#   end

#   run! if app_file == $0
# end
