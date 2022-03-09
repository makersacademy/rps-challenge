require 'sinatra/base'
require 'sinatra/reloader'
require_relative "./lib/rps"

class Rps < Sinatra::Base
  
  configure :development do
    register Sinatra::Reloader
  end

  get '/' do
    erb :index
  end

  post '/play' do
    @player = params[:player_name]
    erb :play
  end

  post '/outcome' do
    @answer = params[:answer]
    erb :outcome
  end

end
