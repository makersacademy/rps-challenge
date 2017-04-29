class Player

  attr_reader :name

  def initialize(name)
    @name = name
  end

  #   def choose_rock
  #     return "You won this round" if $computer.choice == 'Scissors'
  #     draw_or_loose
  #   end
  #
  #   def choose_scissors
  #     return "You won this round" if $computer.choice == 'Paper'
  #     draw_or_loose
  #   end
  #
  #   def choose_paper
  #     return "You won this round" if $computer.choice == 'Rock'
  #     draw_or_loose
  #   end
  #
  #   private
  #
  #   def draw_or_loose
  #     return "It's a draw" if player.choice == computer.choice
  #     return "Computer won this round"
  #   end
  #
  # end
end
