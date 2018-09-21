require 'sinatra'
require_relative '../lib/player.rb'

class RPS < Sinatra::Base

  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/submit-users' do
    session[:player_one] = Player.new(params[:username])
    redirect('/game')
  end

  get '/game' do
    @player_one = session[:player_one]
    erb(:game)
  end

  post '/end' do
    session[:move] = params[:move]
    redirect('/end')
  end

  get '/end' do
    @move = session[:move]
    erb(:end)
  end

  # start the server if ruby file executed directly
  run! if app_file == $0

end
