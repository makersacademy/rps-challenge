require 'sinatra'
require_relative './lib/game'
require_relative './lib/player'
require_relative './lib/machine'
enable :sessions

get '/' do
  erb(:sign_in)
end

post '/play1' do
  session[:player1] = Player.new(params[:player1_name])
  session[:player2] = Player.new(params[:player2_name])
  session[:game] = Game.new(session[:player1], session[:player2])
  erb(:play1)
end
post '/play2' do
  session[:p1_weapon] = params[:choice].downcase.to_sym
  erb(:play2)
end

post '/result' do
  session[:player1].choose(session[:p1_weapon])
  session[:player2].choose(params[:choice].downcase.to_sym)
  if session[:game].draw?
    session[:message]= "Draw"
  elsif session[:game].win?
    session[:message]= "#{session[:player1].name} is the winner!"
  else
    session[:message]= "#{session[:player2].name} is the winner!"
  end
  erb(:result)
end
