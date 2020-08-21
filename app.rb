require 'sinatra'
require 'sinatra/base'


class RPS < Sinatra::Base
 
  get '/' do
    erb :index
  end

  post '/' do
  @player = params[:player]
  erb: play
  end








 
  run! if app_file == $0
end