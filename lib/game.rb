class Game

  attr_reader :player1_choice, :player2_choice

  def initialize(player1_choice, player2_choice = make_choice)
    @player1_choice = converted_to_symbol(player1_choice)
    @player2_choice = converted_to_symbol(player2_choice)
  end

  def winner
    return ROCK_RESULTS[player2_choice] if @player1_choice == :rock
    return PAPER_RESULTS[player2_choice] if @player1_choice == :paper
    return SCISSOR_RESULTS[player2_choice] if @player1_choice == :scissors
    return SPOCK_RESULTS[player2_choice] if @player1_choice == :spock
    return LIZARD_RESULTS[player2_choice] if @player1_choice == :lizard

  end

  private

  ROCK_RESULTS =    {rock: :draw, paper: :lose, scissors: :win, spock: :lose,
                     lizard: :win}
  PAPER_RESULTS =   {rock: :win, paper: :draw, scissors: :lose, spock: :win,
                     lizard: :lose}
  SCISSOR_RESULTS = {rock: :lose, paper: :win, scissors: :draw, spock: :lose,
                     lizard: :win}
  SPOCK_RESULTS =   {rock: :win, paper: :lose, scissors: :win, spock: :draw,
                     lizard: :lose}
  LIZARD_RESULTS =  {rock: :lose, paper: :win, scissors: :lose, spock: :win,
                     lizard: :draw}


  def make_choice
    # random_number = Kernel.rand(15)
    # return "ROCK!" if (0..2).include? random_number
    # return "PAPER!" if (3..5).include? random_number
    # return "SCISSORS!" if (6..8).include? random_number
    # return "SPOCK!" if (9..11).include? random_number
    # return "LIZARD!" if (12..14).include? random_number
    ["ROCK!", "PAPER!", "SCISSORS!", "SPOCK!", "LIZARD!"].sample
  end

  def converted_to_symbol(player_choice)
    player_choice[0..-2].downcase.to_sym
  end



end
