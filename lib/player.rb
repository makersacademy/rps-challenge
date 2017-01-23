class Player
  attr_accessor :your_hand

  def initialize(attack_hand)
    @your_hand = attack_hand
  end

  def play
    puts "you attacked with #{@your_hand}"
    @hands = [:rock,:paper,:scissors]
    @AIhand = @hands.sample
    @AIhand == @your_hand ? draw : not_draw
  end

  def draw
    "It's a draw!
    You both have #{@AIhand}"
  end

  def win
    "You won!
    The Machine chose #{@AIhand}"
  end

  def lose
    "You lost!
    The Machine chose #{@AIhand}"
  end

  def not_draw
    case @your_hand
      when :rock
        @AIhand == :paper ? lose : win
      when :paper
        @AIhand == :rock ? win : lose
      when :scissors
        @AIhand == :paper ? win : lose
      end
  end

end
