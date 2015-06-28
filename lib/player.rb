class Player

  attr_accessor :total_selections, :wins, :losses, :draws
  attr_reader :name, :current_selection

  def initialize name = 'no_name'

    @name = name.capitalize
    @current_selection = nil
    @total_selections = 0
    @wins = 0
    @losses = 0
    @draws = 0
  end

  def select choice
    @current_selection = choice
    @total_selections += 1
  end
end