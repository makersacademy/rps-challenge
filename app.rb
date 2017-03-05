require 'sinatra/base'
require_relative 'lib/player'
require_relative 'lib/game'

class RockPaperScissors < Sinatra::Base
  basic_rules = File.expand_path("../public/logictable_rps.csv", __FILE__)
  advanced_rules = File.expand_path("../public/logictable_rps.csv", __FILE__)
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
    @game = Game.create(Player.new(p1_name), Player.new(p2_name),basic_rules,params[:game_type].to_i)
    redirect '/play'
  end

  get '/rock' do
    @game.current_player.choice = "Rock"
    redirect '/play'
  end

  get '/paper' do
    @game.current_player.choice = "Paper"
    redirect '/play'
  end

  get '/scissors' do
    @game.current_player.choice = "Scissors"
    redirect '/play'
  end
  get '/lizard' do
    @game.current_player.choice = "Lizard"
    redirect '/play'
  end

  get '/spock' do
    @game.current_player.choice = "Spock"
    redirect '/play'
  end

  get '/play' do
    p @game.game_type
    @game.change_player
    erb :play
  end

  # start the server if ruby file executed directly
  run! if app_file == $0

end
