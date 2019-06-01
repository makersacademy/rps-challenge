class RockPaperScissorsGame
  attr_reader :player_one, :player_two

  def initialize(player_one, player_two)
    @player_one, @player_two = player_one, player_two
  end

  def self.instance
    @game
  end

  def self.create(player_one, player_two)
    @game = RockPaperScissorsGame.new(player_one, player_two)
  end

  def winner_message
    if player_one.weapon == player_two.weapon
      "It's a draw!"
    elsif player_one_has_won?
      "The winner is #{player_one.name}!"
    else
      "The winner is #{player_two.name}!"
    end
  end

  private

  def player_one_has_won?
    play_dictionary = {
      'rock' => ['scissors', 'lizard'],
      'paper' => ['rock', 'spock'],
      'scissors' => ['paper', 'lizard'],
      'lizard' => ['spock', 'paper'],
      'spock' => ['rock', 'scissors']
      }

    play_dictionary[player_one.weapon].include?(player_two.weapon)
  end
end
