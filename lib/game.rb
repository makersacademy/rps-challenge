class Game

  attr_reader :player_1

  def self.create_single(player)
    @game = Game.new(player)
  end

  def self.instance
    @game
  end

  def initialize(player_1)
    @player_1 = player_1
  end

  def player_1_name
    @player_1.name
  end

  def player_1_weapon
    @player_1.weapon
  end

  def result(p2)
    if player_1_weapon == p2.weapon
      'Draw'
    elsif player_1_weapon == 'Rock' && p2.weapon == 'Scissors'
      "Rock beats Scissors. <b>#{player_1_name} wins!</b>"
    elsif player_1_weapon == 'Rock' && p2.weapon == 'Paper'
      "Rock looses to Paper. <b>Deep Green wins!</b>"
    elsif player_1_weapon == 'Paper' && p2.weapon == 'Rock'
      "Paper beats Rock. <b>#{player_1_name} wins!</b>"
    elsif player_1_weapon == 'Paper' && p2.weapon == 'Scissors'
      "Paper looses to Scissors. <b>Deep Green wins!</b>"
    elsif player_1_weapon == 'Scissors' && p2.weapon == 'Paper'
      "Scissors beats Paper. <b>#{player_1_name} wins!</b>"
    elsif player_1_weapon == 'Scissors' && p2.weapon == 'Rock'
      "Scissors looses to Rock. <b>Deep Green wins!</b>"
    end
  end
end
