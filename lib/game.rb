class Game

  attr_reader :computer_attack

  RULES = {
            rock: :scissors,
            paper: :rock,
            scissors: :paper
          }

  def initialize(computer_attack)
    @computer_attack = computer_attack
  end

  def self.create(computer_attack)
    @game = Game.new(computer_attack)
  end

  def self.instance
    @game
  end

  def tie?(player_choice)
    player_choice == @computer_attack
  end

  def result(player_choice)
    return :tie if tie?(player_choice)
    RULES[player_choice] == @computer_attack ? :win : :defeat
  end

end
