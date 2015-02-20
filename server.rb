require 'sinatra/base'

class RPS < Sinatra::Base
  get '/' do
    erb :index
  end

  post '/game' do
    @name = params[:name]
    erb :game
  end

  get '/outcome' do
    @selected_weapon = params[:weapon]
    erb :outcome
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
