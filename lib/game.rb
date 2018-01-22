# Game class
class Game
  attr_reader :players, :player1, :player2
  def self.create(player1, player2 = Player.new('Computer'))
    @game = Game.new(player1, player2)
  end

  def self.current_game
    @game
  end

  def initialize(player1, player2)
    @player1 = player1
    @player2 = player2
    @players = [player1, player2]
  end

  def result
    check_win_condition
  end

private

  # def win_condition
  #   if rules[player1.weapon].include?(player2.weapon)
  #     return "#{player1.name} Won!"
  #   elsif rules[player2.weapon].include?(player1.weapon)
  #     return "#{player2.name} Won!"
  #   elsif player1.weapon == player2.weapon
  #     return 'You drew!'
  #    end
  #
  # end

  def check_win_condition
    [check_win, check_draw, check_lose].select { |x| x.is_a?String }.join

  end

  def check_lose
    return "#{player2.name} Won!" if rules[player2.weapon].include?(player1.weapon)
  end

  def check_draw
    return 'You drew!' if player1.weapon == player2.weapon
  end

  def check_win
    return "#{player1.name} Won!" if rules[player1.weapon].include?(player2.weapon)
  end

  def rules
    {
      rock: [:scissors, :lizard],
      paper: [:rock, :spock],
      scissors: [:paper, :lizard],
      spock: [:rock, :scissors],
      lizard: [:spock, :paper]
    }
  end

end
