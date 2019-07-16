require 'sinatra'
require 'capybara'
require 'capybara/rspec'
require 'rspec'
require './lib/game.rb'

class RPS < Sinatra::Base

enable :sessions

get '/' do
  erb(:index)
end

post '/name' do
  session[:name] = params[:name]
  redirect '/play'
end

get '/play' do
  @name = session[:name]
  erb(:play)
end

post '/game' do
  session[:move] = params[:move]
  $game = Game.new(session[:move])
  $game.computer_choice
  session[:message] = $game.result

  if $game.result == "sorry, invalid move given"
    redirect '/error'
  else
    redirect '/result'
  end
end


get '/error' do
erb(:error)

end

get '/result' do
  @game = $game
  @move = session[:move]
  @message = session[:message]
  erb(:result)
end


  run! if app_file == $0
end
