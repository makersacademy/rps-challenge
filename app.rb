require 'sinatra'
require 'sinatra/base'
require 'shotgun'


class RPS < Sinatra::Base
 
  get '/' do
    erb :index
  end

  post '/name' do
    $player_1 = params[:player]
    $player_2 = params[:player]
    redirect '/play'
  end

  get '/play' do
    erb :play
  end

  get '/selection' do
    @rock = params[:rock]
    @paper = params[:paper]
    @scissors = params[:scissors]
    erb :result
  end





 
  run! if app_file == $0
end