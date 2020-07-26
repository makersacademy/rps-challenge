require 'sinatra/base'
require './lib/winner.rb'

class Rps < Sinatra::Base
  enable :sessions

get '/' do
  erb :index
end

post '/names' do
    session[:player_1_name] = params[:player_1_name]
    redirect '/play'
  end

get '/play' do
  @player_1_name = session[:player_1_name]
  erb :play

end

post '/choices' do
  session[:player_1_choice] = params[:choice]
  redirect '/result'
end

get '/result' do
  @player_1_name = session[:player_1_name]
  @player_1_choice = session[:player_1_choice]
  @computer_choice = ["Rock", "Paper", "Scissors"].sample
  @winner = winner(@player_1_name, @player_1_choice, @computer_choice)
  erb :result
end

end
