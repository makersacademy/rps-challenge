class Game

  def self.create(player_name)
    @game = Game.new(player_name)
  end

  def self.instance
    @game
  end

  attr_reader :winner, :player, :computer_choice

  def initialize(player)
    @player = player
    @rbs = [:rock, :paper, :scissors]
    @computer_choice
    @winner
  end

  def who_wins(user_input, computer_choice)
    if (user_input == computer_choice)
      @winner = nil
    elsif (user_input == :rock && computer_choice == :scissors) || (user_input == :paper && computer_choice == :rock) || (user_input == :scissors && computer_choice == :paper)
      @winner = true
    else
      @winner = false
    end
  end

  def rbs
    @computer_choice = @rbs.sample
  end

  private

end
