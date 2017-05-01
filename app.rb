require 'sinatra/base'
require_relative './lib/game_logic.rb'

class Rockpaperscissors <  Sinatra::Base
  enable :sessions

  get '/' do
    erb :index
  end

  post '/playername' do
    session[:player_1_name] = params[:player_1_name]
    redirect '/play'
  end

  get '/play' do
    @player_1_name = session[:player_1_name]
    erb :play

  end

  post '/showdown' do
    session[:weapon] = params[:weapon]
    redirect '/result'
  end

  get '/result' do
    @weapon = session[:weapon]
    @ai_weapon = %w[Rock Paper Scissors].sample
    erb :result
  end

  helpers do
    def end_game_message
      return "The Result is: You're tied!" if @weapon == @ai_weapon

      winning_combos = [["Paper","Rock"],["Rock","Scissor"],["Scissors","Paper"]]
      if winning_combos.include?([@weapon, @ai_weapon])
      "The Result is: You're victorius!"
      else
      "The Result is: Defeat!"
      end
    end
  end


end
