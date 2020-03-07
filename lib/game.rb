class Game
  attr_reader :human, :computer, :finish, :round_status
  def initialize(human, computer)
    @human = human
    @computer = computer
    @finish = false
    @round_status = ""
  end
end
