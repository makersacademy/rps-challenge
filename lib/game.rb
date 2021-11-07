require_relative 'rules'

class Game
  attr_reader :rules

  def computer_selection
    @rules = Rules.new
    computer_move_options = @rules.elements.map { |h| "#{h.name}"}
    computer_move_options.sample
  end

  def determine_winner(player_selection, computer_choice)
    result = 'something is wrong'
    element = @rules.elements.select { |element| element.name == player_selection}.first #find element whose name matches player selection
    if element.beats == computer_choice
      result = "wins"
    elsif element.loses == computer_choice
      result = "loses"
    elsif element.ties == computer_choice
      result = "- It's a tie"
    end
    result
  end
end