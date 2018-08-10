require_relative "./displayer.rb"

class Game

  def self.create(player1, player2 = Player.new("Computer"))
    @game = Game.new(player1, player2)
  end

  def self.instance
    @game
  end

  def initialize(player1, player2 = Player.new("Computer"))
    @player1 = player1
    @player2 = player2
    @displayer = Displayer.new
  end

  attr_reader :player1, :player2

  def play_1_bot_match(player1_choice)
    @player1.make_choice(player1_choice)
    @player2.make_random_choice
  end

  def winner
    return nil if tie_game?
    return @player1 if player1_beats_player2?(@player1, @player2)
    @player2
  end

  def loser
    other_player(winner)
  end

  def tie_game?
    @player1.choice == @player2.choice
  end

  def get_image(choice)
    @displayer.get_image(choice)
  end

  def get_result_string(winner_choice, loser_choice)
    @displayer.get_result_string(winner_choice, loser_choice)
  end

  def get_button(tie_or_winner)
    @displayer.get_button(tie_or_winner)
  end

  private

  def player1_beats_player2?(player1, player2)
    case player1.choice
    when "rock"
      return true if ["scissors", "lizard"].include? player2.choice
      false
    when "paper"
      return true if ["rock", "spock"].include? player2.choice
      false
    when "scissors"
      return true if ["paper", "lizard"].include? player2.choice
      false
    when "spock"
      return true if ["rock", "scissors"].include? player2.choice
      false
    when "lizard"
      return true if ["paper", "spock"].include? player2.choice
      false
    end
  end

  def other_player(player)
    return @player1 if player == @player2
    return @player2 if player == @player1
  end

end
