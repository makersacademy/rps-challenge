require 'sinatra'
require_relative './lib/game'
require_relative './lib/player'
require_relative './lib/machine'
enable :sessions

get '/' do
  erb(:sign_in)
end

post '/play' do
  session[:player] = Player.new(params[:player_name])
  session[:machine] = Machine.new
  session[:game] = Game.new(session[:player], session[:machine])
  erb(:play)
end

post '/result' do
  session[:player].choose(params[:choice].downcase.to_sym)
  session[:machine].choose
  if session[:game].draw?
    session[:message]= "Draw"
  elsif session[:game].win?
    session[:message]= "You are the winner!"
  else
    session[:message]= "Sorry. Please try again!"
  end
  erb(:result)
end
