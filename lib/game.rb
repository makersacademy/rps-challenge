# accounts for a computer player
# pulls rules and issues a winner
require_relative 'rules'

class Game

  attr_reader :rules

  def initialize
    @rules = Rules.new
  end

  def computer_selection
    computer_move_options = @rules.elements.map { |h| "#{h.name}"}
    computer_move_options.sample
  end
end