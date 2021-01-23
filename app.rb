require 'sinatra'
require './lib/computer'
class Rps < Sinatra::Base
enable :sessions

  get '/' do
    erb(:index)
  end

  post '/names' do
    session[:player_1_name] = params[:player_1_name]
    redirect '/play'
  end

  get '/play' do
    @player_1_name = session[:player_1_name]
    erb(:play)
  end

  post '/select_shape' do
  session[:shape] = params[:shape]
  session[:computer_shape] = Computer.new.shape
  redirect '/select_shape'
end

get '/select_shape' do
  @shape = session[:shape]
  @computer_shape = session[:computer_shape]
  erb(:select_shape)
end
end