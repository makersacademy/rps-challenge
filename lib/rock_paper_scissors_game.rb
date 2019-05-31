class RockPaperScissorsGame
  attr_accessor :player, :computer_weapon

  def initialize(player)
    @player = player
  end

  def self.instance
    @game
  end

  def self.create(player)
    @game = RockPaperScissorsGame.new(player)
  end

  def play
    @computer_weapon = random_weapon
  end

  def winner_message
    if player.weapon == computer_weapon
      "It's a draw!"
    elsif player_has_won?
      "The winner is #{player.name}"
    else
      "The winner is the computer."
    end
  end

  private

  def player_has_won?
    if player.weapon == 'rock' && computer_weapon == 'scissors'
      return true
    elsif player.weapon == 'rock' && computer_weapon == 'paper'
      return false
    elsif player.weapon == 'paper' && computer_weapon == 'scissors'
      return false
    elsif player.weapon == 'paper' && computer_weapon == 'rock'
      return true
    elsif player.weapon == 'scissors' && computer_weapon == 'rock'
      return false
    elsif player.weapon == 'scissors' && computer_weapon == 'paper'
      return true
    end
  end

  def random_weapon
    ['rock','paper','scissors'].sample
  end
end
