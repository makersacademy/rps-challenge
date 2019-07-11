require 'delegate'

class RPSComputer < SimpleDelegator
  COMPUTER_OPTIONS = ['Rock', 'Paper', 'Scissors']

  def initialize
    super(COMPUTER_OPTIONS.sample)
  end
end