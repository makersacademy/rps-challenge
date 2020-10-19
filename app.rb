require 'sinatra/base'
require_relative 'choices_game.rb'
class App < Sinatra::Base
enable :sessions

get '/' do
    erb(:index)
end

get '/player' do
    erb :player
end

post '/names' do
    session[:player_1_name] = params[:player_1_name]
    redirect to '/player'
end

get '/player_one' do
    erb :player_one
end

get '/result' do
    @computer_game = Computer.new
    @player_one_game = PlayerOne.new
    @results = Game.new(params[:@player_one, :@computer]).playing_game
    erb :result
end

post '/result' do
    session[:player_input] = params[:player_input]
    redirect to '/result'
end



run! if app_file == $0
end

