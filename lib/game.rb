class Game

  attr_reader :player_choice, :computer_choice

  def initialize(player_choice)
    @player_choice = converted_to_symbol(player_choice)
    @computer_choice = make_choice
  end

  def make_choice
    random_number = Kernel.rand(8)
    if (0..2).include? random_number
      :rock
    elsif (3..5).include? random_number
      :paper
    elsif (6..8).include? random_number
      :scissors
    end
  end

  def winner
    if @player_choice == :rock
      return :draw if @computer_choice == :rock
      return :lose if @computer_choice == :paper
      return :win if @computer_choice == :scissors
      fail "Computer choice is incorrect: player chose rock."
    elsif @player_choice == :paper
      return :win if @computer_choice == :rock
      return :draw if @computer_choice == :paper
      return :lose if @computer_choice == :scissors
      fail "Computer choice is incorrect: player chose paper."
    elsif @player_choice == :scissors
      return :lose if @computer_choice == :rock
      return :win if @computer_choice == :paper
      return :draw if @computer_choice == :scissors
      fail "Computer choice is incorrect: player chose scissors."
    else
      fail "Player did not chose one of the options."
    end
  end

  private

  def converted_to_symbol(player_choice)
    player_choice[0..-2].downcase.to_sym
  end



end
