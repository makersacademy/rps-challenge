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
    @game.current_player.choice = "Rock"
    @game.change_player
    @game.update_state
    redirect '/play'
  end

  get '/paper' do
    @game.current_player.choice = "Paper"
    @game.change_player
    @game.update_state
    redirect '/play'
  end

  get '/scissors' do
    @game.current_player.choice = "Scissors"
    @game.change_player
    @game.update_state
    redirect '/play'
  end
  get '/lizard' do
    @game.current_player.choice = "Lizard"
    @game.change_player
    @game.update_state
    redirect '/play'
  end

  get '/spock' do
    @game.current_player.choice = "Spock"
    @game.change_player
    @game.update_state
    redirect '/play'
  end

  get '/play' do
    p @game.player_2.automated?
    erb :play
  end

  # start the server if ruby file executed directly
  run! if app_file == $0

end
