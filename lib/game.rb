class Game
attr_accessor :winner

  RULES = {
    'rock': 'scissors',
    'paper': 'rock',
    'scissors': 'paper'
  }

  def initialize(weapon)
    @choice = weapon
  end

  def computer_guess
    computer_guesses = %w{rock paper scissors}
    computer_guesses.sample
  end

  def winner_is
    if RULES[computer_guess.to_sym].include? @choice
      @winner = "computer"
      return @winner
    elsif RULES[@choice.to_sym].include? computer_guess
      @winner = "player"
      return @winner
    else
      @winner = "tie"
      return @winner
    end
  end

  # def rule_engine
  #
  # end

  end
