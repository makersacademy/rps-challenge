class Game

  WEAPONS = ["Rock", "Paper", "Scissors"]

  GAME_RULES = {rock: {rock: 0, paper: -1, scissors: 1},
                paper: {rock: 1, paper: 0, scissors: -1},
                scissors: {rock:-1, paper: 1, scissors: 0}}

  def self.create(player, computer)
    @game = Game.new(player,computer)
  end

  def self.instance
    @game
  end

  attr_reader :player, :computer

  def initialize(player,computer)
    @player = player
    @computer = computer
  end

  def result
    return :win if win
    return :lose if lose
    return :draw if draw
  end

  private
    def win
      GAME_RULES[player.choice.downcase.to_sym][computer.choice.downcase.to_sym] >= 1
    end

    def draw
      player.choice == computer.choice
    end

    def lose
      GAME_RULES[player.choice.downcase.to_sym][computer.choice.downcase.to_sym] < 0
    end

end
