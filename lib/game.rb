class Game

  attr_reader :player1_choice, :player2_choice

  def initialize(player_choice, player2_choice = make_choice)
    @player1_choice = converted_to_symbol(player_choice)
    @player2_choice = converted_to_symbol(player2_choice)
  end

  def winner
    return player_chose_rock if @player1_choice == :rock
    return player_chose_paper if @player1_choice == :paper
    return player_chose_scissors if @player1_choice == :scissors
  end

  private

  def make_choice
    random_number = Kernel.rand(8)
    return "ROCK!" if (0..2).include? random_number
    return "PAPER!" if (3..5).include? random_number
    return "SCISSORS!" if (6..8).include? random_number
  end

  def player_chose_rock
    return :draw if @player2_choice == :rock
    return :lose if @player2_choice == :paper
    return :win if @player2_choice == :scissors
  end

  def player_chose_paper
    return :win if @player2_choice == :rock
    return :draw if @player2_choice == :paper
    return :lose if @player2_choice == :scissors
  end

  def player_chose_scissors
    return :lose if @player2_choice == :rock
    return :win if @player2_choice == :paper
    return :draw if @player2_choice == :scissors
  end

  def converted_to_symbol(player_choice)
    player_choice[0..-2].downcase.to_sym
  end



end
