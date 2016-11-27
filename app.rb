require 'sinatra/base'
require './lib/player'

class RPS < Sinatra::Base

  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/name' do
    session[:name], @name = params[:player_name]
    redirect '/play'
  end

  get '/play' do
    @name = session[:name]
    erb(:play)
  end

  post '/round' do
    @player_choice = params[:RPS]
    @player = Player.new(@name)
    erb(:outcome)
  end






  # start the server if ruby file executed directly
  run! if app_file == $0
end
