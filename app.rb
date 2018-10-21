require 'sinatra'
require 'sinatra/partial'
require './lib/game'
require './lib/player'
require './lib/computer_player'
require './lib/choice_reader'
require './lib/rules_factory'

# RockPaperScissors
class RockPaperScissors < Sinatra::Base
  configure do
    register Sinatra::Partial
  end
  enable :sessions

  get '/' do
    erb :index
  end

  post '/names' do
    player1 = Player.new(params[:player_name])
    player2 = ComputerPlayer.new
    choices = ChoiceReader.new.create_choice('./res/moves.json')
    rules = RulesFactory.new.create_rules('./res/rules.json')
    session[:game] = Game.new(player1, player2, choices, rules)
    redirect '/play'
  end

  get '/play' do
    @game = session[:game]
    erb :play
  end

  post '/choice' do
    choice = params[:choice]
    @game = session[:game]
    @game.player1.make_choice(@game.choices, choice_string: choice)
    @game.player2.make_choice(@game.choices)
    redirect '/match'
  end

  get '/match' do
    @game = session[:game]
    erb :match
  end

  post '/game-over' do
    @game = session[:game]
    @game.game_over
    redirect '/game-over'
  end

  get '/game-over' do
    @game = session[:game]
    erb :game_over
  end

  run! if app_file == $PROGRAM_NAME
end
