require 'sinatra'
set :session_secret, 'super secret'

get '/' do
  erb :index
end

get '/begin_game' do
  erb :begin_game
end

get '/play' do
  @computer_chooses = ["Rock", "Paper", "Scissors"].sample
  erb :play
end
