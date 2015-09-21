class Player
  attr_reader :name
  attr_accessor :move

  def initialize(name)
    @name = name
  end

  # def select(move)
  #   if move.to_sym == :rock
  #     @move = move
  #   elsif move.to_sym == :paper
  #     @move = move
  #   elsif move.to_sym == :scissors
  #     @move = move
  #   else
  #     fail "Select 'Rock', 'Paper' or 'Scissors'."
  #   end
  # end

  def picks(choice)
    self.move = choice.downcase.to_sym
  end
end
