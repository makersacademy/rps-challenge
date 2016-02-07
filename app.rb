require 'sinatra/base'
require './lib/players'
require './lib/game'

class App < Sinatra::Base
enable :sessions

  get '/' do
    erb :index
  end

  post '/accepted' do
    player_1 = Players.new(params[:player_1_first_name],params[:player_1_surname],params[:player_1_email])
    @player_1 = player_1
    @player_1_first_name = player_1.first_name
    @player_1_surname = player_1.surname
    @player_1_email = player_1.email
    erb :accepted
  end

  post '/start_page' do
    erb :start_page
  end

  get '/select1' do
    computer_choice = Game.new
    @computer_choice = computer_choice.rand
    @answer = computer_choice.rock
    @rock = 'Rock'
    erb :select1
  end

  get '/select2' do
    computer_choice = Game.new
    @computer_choice = computer_choice.rand
    @answer = computer_choice.paper
    @paper = 'Paper'
    erb :select2
  end

  get '/select3' do
    computer_choice = Game.new
    @computer_choice = computer_choice.rand
    @answer = computer_choice.scissors
    @scissors = 'Scissors'
    erb :select3
  end


run! if app_file == $0
end
