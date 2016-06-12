require_relative 'computer'
class Game 
  attr_reader :player, :choice, :computer
  def initialize(name, computer)
    @player = name
    @choice
    @computer = computer
  end

  def self.instance
    @game
  end

  def self.set_game(name)
    @game = Game.build(name)
  end

  def self.build(name,computer = Computer.new)
    new(name, computer)
  end
  
  def set_choice(choice)
    @choice = choice.downcase
  end

  def set_computer
    computer.set_choice
  end

  def outcome
    return :draw if same_choice?
    return :win if player_wins?
    return :loss if player_loses?
  end

  private

  def same_choice?
    @choice.to_sym == @computer.choice
  end

  def player_wins?
    RULES[@choice.to_sym] == @computer.choice
  end

  def player_loses?
    RULES[@choice.to_sym] != @computer.choice
  end

  RULES = { rock: :scissors,
          paper: :rock,
          scissors: :paper }
end
