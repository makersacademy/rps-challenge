class Player

  MOVES = [:rock, :paper, :scissors]

  attr_reader :name

  def initialize(name)
    @name = name
  end

  def select_move
    puts "Pick a Move: "
    move = gets.chomp.downcase.to_sym
    @move = :rock if move == :rock
  end

end
