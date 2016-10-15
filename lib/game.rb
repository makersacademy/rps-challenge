class Game

  def self.create(name)
    @game = Game.new(name)
  end

  def self.instance
    @game
  end

  attr_reader :player1, :player1_choice, :player2_choice, :winner

  def initialize(name)
    @player1 = name
    @player1_choice = nil
    @player2_choice = nil
    @winner = nil
  end

  def set_player_choice(choice)
    @player1_choice = choice
  end

  def set_auto_choice(stub=nil)
    choices = [:rock, :paper, :scissors]
    @player2_choice = stub.nil? ? choices[rand_choice] : choices[stub]
  end

  def decide_winner
    unless @player1_choice == @player2_choice
      case @player1_choice
      when :rock
         @winner = (@player2_choice == :paper) ? "game" : @player1
      when :paper
        @winner = (@player2_choice == :scissors) ? "game" : @player1
      when :scissors
        @winner = (@player2_choice == :rock) ? "game" : @player1
      end
    end
  end

  private

  def rand_choice
    rand(3)
  end

end
