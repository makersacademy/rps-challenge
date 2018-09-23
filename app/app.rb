require 'sinatra'
require_relative '../lib/player.rb'
require_relative '../lib/game.rb'

class RPS < Sinatra::Base

  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/submit-users' do
    p1 = params[:player_one].capitalize
    p2 = params[:player_two].empty? ? 'AI' : params[:player_two].capitalize
    session[:game] = Game.new(Player.new(p1), Player.new(p2))
    redirect('/play')
  end

  get '/play' do
    @game = session[:game]
    erb(:play)
  end

  post '/end' do
    session[:game].player_one.move = params[:move_1].downcase.to_sym
    redirect('/end')
  end

  get '/end' do
    @game = session[:game]
    erb(:end)
  end

  # start the server if ruby file executed directly
  run! if app_file == $0

end
