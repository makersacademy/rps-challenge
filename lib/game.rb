class Game
  attr_reader :human, :computer, :finish, :round_status
  def initialize(human, computer)
    @human = human
    @computer = computer
    @finish = false
    @round_status = ""
  end

  def start
    set_hand
    result
  end

  private

  def result
    
  end
  
  def set_hand
    @human.set_hand
    @computer.set_hand
  end
end
