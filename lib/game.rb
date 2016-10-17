class Game

  attr_reader :player_1, :player_2

  def initialize(player_1, player_2)
    @player_1 = player_1
    @player_2 = player_2
  end

  def self.create(player_1, player_2)
    @game = Game.new(player_1, player_2)
  end

  def self.instance
    @game
  end

  def result
    return "draw" if player_1.weapon == player_2.weapon
      if player_1.weapon == "Rock" && player_2.weapon == "Scissors"
        return "you win"
      elsif player_1.weapon == "Paper" && player_2.weapon == "Rock"
        return "you win"
      elsif player_1.weapon == "Scissors" && player_2 == "Paper"
        return "you win"
      else return "you lose - prepare to die"
      end
  end

end
