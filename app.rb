require 'sinatra/base'
require './lib/player'
require './lib/game'

class RPS < Sinatra::Base
  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/start' do
    user1 = Player.new(params[:username_1])
    user2 = Player.new(params[:username_2])
    p user1, user2
    $game = Game.new(user1, user2)
    redirect '/welcome'
  end

  get '/welcome' do
    @game = $game
    erb :welcome
  end

  get '/first_player' do
    @game = $game
    erb :first_player
  end

  post '/first_player_choice' do
    @game = $game
    $weapon1 = params[:weapon]
    redirect '/second_player'
  end

  get '/second_player' do
    @game = $game
    erb :second_player
  end

  post '/second_player_choice' do
    @game = $game
    $weapon2 = params[:weapon]
    $game.play($weapon1, $weapon2)
    redirect '/result'
  end

  # post '/play' do
  #   @game = $game
  #   $game.play(params[:weapon])
  #   redirect '/result'
  # end

  get '/result' do
    @game = $game
    erb :result
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end


# .sample https://github.com/makersacademy/course/blob/master/intro_to_the_web/sinatra_erb.md

# render 'if' statement: https://github.com/makersacademy/course/blob/master/intro_to_the_web/sinatra_using_forms.md
