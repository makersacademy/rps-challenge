require_relative 'weapons'

class Game

  attr_reader :player1_choice, :player2_choice

  def initialize(player1_choice, player2_choice = Weapons.choose)
    @player1_choice = player1_choice.to_sym
    @player2_choice = player2_choice.to_sym
  end

  def winner
    return ROCK_RESULTS[@player2_choice] if @player1_choice == :rock
    return PAPER_RESULTS[@player2_choice] if @player1_choice == :paper
    return SCISSOR_RESULTS[@player2_choice] if @player1_choice == :scissors
    return SPOCK_RESULTS[@player2_choice] if @player1_choice == :spock
    return LIZARD_RESULTS[@player2_choice] if @player1_choice == :lizard

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


end
