require_relative 'player.rb'

class Game

  attr_reader :no_of_players, :player1, :player2, :current_player

  WINNER = {["PAPER", "SCISSORS"]=>"SCISSORS", 
            ["ROCK", "SCISSORS"]=>"ROCK", 
            ["PAPER", "ROCK"]=>"PAPER"}

  def initialize(no_of_players, player_class1 = Player, player_class2 = Player)
    @player_class1 = player_class1
    @player_class2 = player_class2
    @no_of_players = no_of_players
  end

  def set_players(player1_name, player2_name)
    @player1 = @player_class1.new(player1_name)
    @player2 = @player_class2.new(player2_name)
    @current_player = @player1
  end

  def self.create(no_of_players)
    @game = new(no_of_players)
  end

  def self.instance
    @game
  end

  def random_choice
    ['ROCK', 'PAPER', 'SCISSORS'].sample
  end

  def is_current_player_computer?
    @no_of_players == 1 && @current_player == @player2
  end

  def set_choice(choice)
    @current_player.set_choice(choice)
  end

  def check_winner
    return nil if player1.choice == player2.choice
    win_choice = WINNER[[player1.choice, player2.choice].sort]
    win_choice == player1.choice ? player1 : player2
  end

  def current_opponent
    @current_player == @player1 ? @player2 : @player1
  end

  def end_turn
    @current_player = current_opponent
  end

end
