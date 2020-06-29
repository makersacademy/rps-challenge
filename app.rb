# frozen_string_literal: true

require 'sinatra/base'
require_relative 'game_logic.rb'

class RockPaperScissors < Sinatra::Base
  enable :sessions

  get '/' do
    session[:score] = 0
    @session = session
    erb :index
  end

  post '/name' do
    session[:name] = params[:name]
    redirect to('/game')
  end

  get '/game' do
    @name = session[:name]
    @score = session[:score]
    erb :game
  end

  post '/choice' do
    session[:choice] = params[:choice]
    redirect to('/result')
  end

  get '/result' do
    @score = session[:score]
    @choice = session[:choice]
    @game = GameLogic.new(@choice)
    @computer_choice = @game.computer
    @game_result = @game.result
    erb :result
  end
end
