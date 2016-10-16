require_relative './player'
require_relative './computer'

class Game

  def self.create
    @game = Game.new
  end

  def self.instance
    @game
  end

  CHOICES = [:rock, :paper, :scissors]

  attr_reader :player1, :computer, :result, :p_choice, :c_choice

  def initialize
    @player1 = nil
    @computer = nil
    @result = nil
    @rules = {rock: :scissors, paper: :rock, scissors: :paper}
    @p_choice = nil
    @c_choice = nil
  end

  def set_players(name)
    @player1 = Player.new(name)
    @computer = Computer.new
  end

  def set_choices
    @p_choice = @player1.choice
    @c_choice = @computer.choice
  end


  def decide_winner(c_choice=@c_choice,p_choice=@p_choice)
    case c_choice
    when p_choice
      @result = :draw
    when @rules[p_choice]
      @result = :win
    else
      @result = :lose
    end
  end

end
