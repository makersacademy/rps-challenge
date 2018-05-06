require 'sinatra/base'
require 'sinatra'

set :public_folder, File.dirname(__FILE__)

class Rps < Sinatra::Base

  get '/' do
    erb :index
  end

  post '/names' do
    # player.name = params[:player]
    redirect('/game')
  end

  get '/game' do
    erb :game
  end

end
