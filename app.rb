require 'sinatra/base'
require './lib/game.rb'

class RockPaperScissors < Sinatra::Base

  get '/' do
    erb(:index)
  end

  post '/start' do
    @player_name = params[:player_name]
    @game = Game.create(@player_name)
    erb(:start)
  end

  post '/show_choices' do
    @game = Game.instance
    @players_choice = params[:choice]
    @computers_choice = @game.random_choice
    @winner = @game.check_winner(@players_choice, @computers_choice)
    erb(:show_choices)
  end

  run! if app_file == $0
  set :session_secret, 'super secret'

end