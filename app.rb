require_relative './lib/game'
require_relative './lib/user'
require_relative './lib/computer'
require 'sinatra/base'
require 'pry'

class RPS < Sinatra::Base
  get '/' do
    erb(:homepage)
  end

  post '/name' do
    @player = User.new(params[:player_name])
    @game = Game.create(@player)
    redirect '/play_start'
  end

  get '/play_start' do
    @game = Game.instance
    @player_name = @game.player_name
    erb(:play_start)
  end

  post '/rock' do
    @game = Game.instance
    @game.user_chooses('Rock')
    redirect '/play_end'
  end

  post '/paper' do
    @game = Game.instance
    @game.user_chooses('Paper')
    redirect '/play_end'
  end

  post '/scissors' do
    @game = Game.instance
    @game.user_chooses('Scissors')
    redirect '/play_end'
  end

  get '/play_end' do
    @game = Game.instance
    @user_choice = @game.user_choice
    erb(:play_end)
  end

end
