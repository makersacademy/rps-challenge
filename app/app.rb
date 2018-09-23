require 'sinatra'
require_relative '../lib/player.rb'

class RPS < Sinatra::Base

  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/submit-users' do
    session[:player_one] = Player.new(params[:player_one])
    p2 = params[:player_two].empty? ? 'AI' : params[:player_two]
    session[:player_two] = Player.new(p2)
    redirect('/play')
  end

  get '/play' do
    @player_one = session[:player_one]
    @player_two = session[:player_two]
    erb(:play)
  end

  post '/end' do
    session[:player_one].move = params[:move_1]
    session[:player_two].move = params[:move_2]
    redirect('/end')
  end

  get '/end' do
    @player_one = session[:player_one]
    @player_two = session[:player_two]
    erb(:end)
  end

  # start the server if ruby file executed directly
  run! if app_file == $0

end
