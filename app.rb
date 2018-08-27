require 'sinatra/base'
require_relative './lib/game'

class Rps < Sinatra::Base

  get '/' do
    erb :index
  end

  post '/name' do
     $p1 = params[:player_name]
     @p1 = $p1
     redirect '/play'
   end

   get '/play' do
      @p1 = $p1
     erb :play
   end

   post '/choice' do
     $choice = params[:move]
     @choice = $choice
     $game = Game.new(@choice)
     @game = $game
     $computers_choice = @game.computers_choice
     $winner = @game.determine_result
     redirect  '/decision'
   end

   get '/decision' do
      @p1 = $p1
      @choice = $choice
      @computers_choice = $computers_choice
      @winner = $winner
     erb :decision
   end

end
