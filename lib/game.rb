class Game

  attr_reader :player_choice, :computer_choice

  def initialize(player_choice)
    @player_choice = converted_to_symbol(player_choice)
    @computer_choice = make_choice
  end

  def winner
    return player_chose_rock if @player_choice == :rock
    return player_chose_paper if @player_choice == :paper
    return player_chose_scissors if @player_choice == :scissors
  end

  private

  def make_choice
    random_number = Kernel.rand(8)
    return :rock if (0..2).include? random_number
    return :paper if (3..5).include? random_number
    return :scissors if (6..8).include? random_number
  end

  def player_chose_rock
    return :draw if @computer_choice == :rock
    return :lose if @computer_choice == :paper
    return :win if @computer_choice == :scissors
  end

  def player_chose_paper
    return :win if @computer_choice == :rock
    return :draw if @computer_choice == :paper
    return :lose if @computer_choice == :scissors
  end

  def player_chose_scissors
    return :lose if @computer_choice == :rock
    return :win if @computer_choice == :paper
    return :draw if @computer_choice == :scissors
  end

  def converted_to_symbol(player_choice)
    player_choice[0..-2].downcase.to_sym
  end



end
