require 'sinatra/base'
# require each in lib

class RPS < Sinatra::Base

  get '/' do
    erb(:index)
  end

  post '/name' do
  $player = params[:player]
  @player = $player
  erb(:name)
  end

  get '/game' do
  erb(:game)
  end

run! if app_file == $0

end
