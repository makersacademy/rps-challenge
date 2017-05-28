class Opponent

  def initialize
    @choice = 'Rock'
  end

  def choose_hand
    case random_pick
      when 1
        @choice = 'Rock'
      when 2
        @choice = 'Paper'
      when 3
        @choice = 'Scissors'
      end
    @choice
  end

  private
  
  def random_pick
    1 + rand(3)
  end

end
