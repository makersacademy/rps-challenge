require 'sinatra/base'
require './lib/player'
require './lib/game'

class RPS < Sinatra::Base
  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/start' do
    $game = Game.new(Player.new(params[:username]))
    redirect '/welcome'
  end

  get '/welcome' do
    @game = $game
    erb :welcome

  end

  post '/play' do
    @game = $game
    weapon = params[:weapon]
    $game.player.choose_weapon(weapon)

    #//computer chooses R, P, S
    redirect '/result'
  end

  get '/result' do
    @game = $game
    erb :result
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end


# .sample https://github.com/makersacademy/course/blob/master/intro_to_the_web/sinatra_erb.md

# render 'if' statement: https://github.com/makersacademy/course/blob/master/intro_to_the_web/sinatra_using_forms.md
