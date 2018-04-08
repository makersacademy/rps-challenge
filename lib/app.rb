require 'sinatra'
require './lib/player'
require './lib/game'


class App < Sinatra::Base


configure do

  enable :sessions
  set :session_secret, 'key'

end

get '/signin' do

  erb :signin



end

post '/play' do


  session[:playername] = params[:'playername']
  redirect '/play'

end

get '/play' do

  @player = Player.new(session[:playername])
  @player2 = Player.new('The computer')

   erb :rps


end

post '/playrps' do

  session[:playerchoice] = params[:'playerchoice']
  redirect '/playrps'

end

get '/playrps' do

  @player = Player.new(session[:playername])
  @player2 = Player.new('The computer')


  @player.choice = session[:playerchoice]
  @player2.choice = ['Rock', 'Paper', 'Scissors'].sample

  erb :result

end



# get '/pick' do
#
#   @player = Player.new(session[:playername])
#
#
#   erb :choice
#
# end



end
