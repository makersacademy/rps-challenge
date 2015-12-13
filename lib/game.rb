class Game

  attr_reader :player1_choice, :player2_choice

  def initialize(player_choice, player2_choice = make_choice)
    @player1_choice = converted_to_symbol(player_choice)
    @player2_choice = converted_to_symbol(player2_choice)
  end

  def winner
    return ROCK_RESULTS[player2_choice] if @player1_choice == :rock
    return PAPER_RESULTS[player2_choice] if @player1_choice == :paper
    return SCISSOR_RESULTS[player2_choice] if @player1_choice == :scissors
  end

  private

  ROCK_RESULTS = {rock: :draw, paper: :lose, scissors: :win}
  PAPER_RESULTS = {rock: :win, paper: :draw, scissors: :lose}
  SCISSOR_RESULTS = {rock: :lose, paper: :win, scissors: :draw}


  def make_choice
    random_number = Kernel.rand(8)
    return "ROCK!" if (0..2).include? random_number
    return "PAPER!" if (3..5).include? random_number
    return "SCISSORS!" if (6..8).include? random_number
  end

  # def who_wins_if_player_one_chose_rock
  #   return :draw if @player2_choice == :rock
  #   return :lose if @player2_choice == :paper
  #   return :win if @player2_choice == :scissors
  # end
  #
  # def who_wins_if_player_one_chose_paper
  #   return :win if @player2_choice == :rock
  #   return :draw if @player2_choice == :paper
  #   return :lose if @player2_choice == :scissors
  # end
  #
  # def who_wins_if_player_one_chose_scissors
  #   return :lose if @player2_choice == :rock
  #   return :win if @player2_choice == :paper
  #   return :draw if @player2_choice == :scissors
  # end

  def converted_to_symbol(player_choice)
    player_choice[0..-2].downcase.to_sym
  end



end
