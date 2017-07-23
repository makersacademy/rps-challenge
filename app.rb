require 'sinatra/base'
require './lib/player'
require './lib/computer_player'

class RockPaperScissors < Sinatra::Base

  enable :sessions

  helpers do
    def event_message(player, choice)
      "#{player.name} chooses #{choice.to_s.capitalize}!" if choice
    end

    def win_message(winner)
      winner == 0 ? 'Draw!' : "#{winner.name} wins!"
    end
  end

  get '/' do
    erb :index
  end

  before do
    @game = session[:game]
    @human_player = session[:human_player]
    @computer_player = session[:computer_player]
  end

  post '/name' do
    session[:game] = Game.create(Player.new(params[:player_name]), ComputerPlayer.new('Superhans'))
    session[:human_player] = Player.new(params[:player_name])
    session[:computer_player] = ComputerPlayer.new('Superhans')
    redirect '/play'
  end

  get '/play' do
    @game
    @last_play = session[:last_play]
    @human_choice = session[:human_choice]
    @computer_choice = session[:computer_choice]
    erb :play
  end

  post '/choice' do
    computer_choice = @game.computer_player.choose
    human_choice = params[:choice].to_sym
    p @game.play(human_choice, computer_choice)
    session[:last_play] = win_message(@game.last_winner)
    session[:human_choice] = event_message(@game.human_player, human_choice)
    session[:computer_choice] = event_message(@game.computer_player, computer_choice)
    redirect '/play'
  end

end
