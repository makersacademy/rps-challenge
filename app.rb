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
    @game = Game.create(Player.new(params[:player_1]), Computer.new)
    redirect '/rules'
  end

  before do
    @game = Game.instance
  end

  get '/rules' do
    erb(:rules)
  end

  get '/play' do
    erb(:play)
  end

  post '/players_choice' do
    @player_choice = session[:weapon], params[:weapon]
    redirect '/outcome'
  end

  get '/outcome' do
    @game.play(params[:weapon])
    erb(:outcome)
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
