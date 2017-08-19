require 'sinatra'
#require 'rack'

class Rps < Sinatra::Base

  get '/' do
    "Hello Player!"
    erb(:index)
  end

  post '/name' do
    @player = params[:player] # || "Player"
  #redirect to '/play'
  #erb(:play)
  end

  post '/play' do
    erb(:play)
    rock
    paper
    scissors
  end






  run! if app_file == $0  
end
