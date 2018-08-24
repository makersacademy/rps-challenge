require 'sinatra/base'
# require each in lib

class RPS < Sinatra::Base

  get '/' do
    erb(:index)
  end

  post '/name' do
    # see name in lights
    # get params
    # click to start the game
  end

  get '/game'



run! if app_file == $0

end
