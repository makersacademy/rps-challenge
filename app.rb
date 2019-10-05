# app.rb
require 'sinatra/base'
# require_relative './lib/game'

class RPS < Sinatra::Base
  # ... app code here ...

enable :sessions

  get '/' do
    erb(:index)
  end

  post '/names' do
    session[:Name] = params[:Name]
    redirect '/play'
  end

  get '/play' do
    @player = session[:Name]
    erb(:play)
  end

  # start the server if ruby file executed directly
  run! if app_file == $0

end
