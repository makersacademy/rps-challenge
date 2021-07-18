require 'sinatra/base'
require 'sinatra/reloader'

class Rps < Sinatra::Base
  configure :development do
    register Sinatra::Reloader  
  end

  get '/' do
    erb(:index)
  end

  run! if app_file == $0

  post '/name' do
    ''
    @player = params[:player]
    erb(:play)
  end

  post '/selection1' do
    @choice = params[:Rock]
    erb(:selection1)
  end

  post '/selection2' do
    @choice2 = params[:Paper]
    erb(:selection2)
  end

  post '/selection3' do
    @choice3 = params[:Scissors]
    erb(:selection3)
  end
end