$VERBOSE=nil
require 'sinatra'
require './lib/game'
require './lib/player'
require './lib/computer'

class RockPaperScissors < Sinatra::Base
  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/names' do
    @game = Game.create((Player.new(params[:player_1])), Computer.new.move)
    p @game
    redirect '/rules'
  end

  get '/rules' do
    @game = Game.instance
    erb(:rules)
  end

  get '/play' do
    @game = Game.instance
    erb(:play)
  end

  post '/players_choice' do
    @player_choice = session[:weapon], params[:weapon]
    @game = Game.instance
    @game.play(@player_choice, player_2)
    redirect '/outcome'
  end

  get '/outcome' do
    erb(:outcome)
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
