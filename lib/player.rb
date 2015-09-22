class Player

  attr_reader :name
  attr_accessor :move

  LEGAL_MOVE = [:rock, :paper, :scissors].freeze

  def initialize(name)
    @name = name
  end

  def choose_move(player_choice)
    @move = sanitize_input(player_choice)
    valid_move?(move) ? move : fail("That's not a valid choice")
  end

  private

  def sanitize_input(player_input)
    player_input.downcase.to_sym
  end

  def valid_move?(player_input)
    LEGAL_MOVE.include?(player_input)
  end

end
