require 'sinatra/base'
require './lib/game'

class Rps < Sinatra::Base
enable :sessions

  get '/' do
    erb :names_form
  end

  post '/names' do
    session[:name] = params[:player]
    redirect '/play'
  end

  get '/play' do
    @player = session[:name]
    erb :play
  end

  get '/result' do
    @result = params[:chose]
    @game = Rpsls.new(session[:name])
    erb :result
  end



  # start the server if ruby file executed directly
  run! if app_file == $0
end
