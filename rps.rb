require 'sinatra'
#require 'rack'

class Rps < Sinatra::Base

  get '/' do
    "Hello Player!"
    erb(:index)
  end

  post '/name' do
    @player = params[:player] # || "Player"
    erb(:play)
  #post '/play' do
    #rock
    #paper
    #scissors
  end

  






  run! if app_file == $0
end
