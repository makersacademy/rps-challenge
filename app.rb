require 'sinatra/base'
require_relative 'lib/player'
require_relative 'lib/game'

class RockPaperScissors < Sinatra::Base

  set :sessions, true

  before do
    @game = Game.instance
  end

  get '/' do
    erb(:index)
  end

  post '/names' do
    p1_name = params[:name_player_one]
    p2_name = params[:name_player_two] ||= ""
    @game = Game.create(Player.new(p1_name), Player.new(p2_name),params[:game_type].to_i)
    redirect '/play'
  end

  get '/rock' do
    @game.update("Rock")
    redirect '/play'
  end

  get '/paper' do
    @game.update("Paper")
    redirect '/play'
  end

  get '/scissors' do
      @game.update("Scissors")
    redirect '/play'
  end
  get '/lizard' do
      @game.update("Lizard")
    redirect '/play'
  end

  get '/spock' do
    @game.update("Spock")
    redirect '/play'
  end

  get '/play' do
    p @game.player_2.automated?
    erb :play
  end

  # start the server if ruby file executed directly
  run! if app_file == $0

end
