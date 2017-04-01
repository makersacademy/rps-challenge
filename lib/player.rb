class Player

  attr_reader :name, :hand, :three

  def initialize(name)
    @name = name
    @hand = ['rock','paper','scissors']
  end


  def latest_play(three)
    @three = three 
  end
  # def play(option)
  #   @three = option
  # end
  #
  # def auto_play
  #   @three = hand.sample
  # end

end
