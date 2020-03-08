class Game
  RULES = [ 
    {hand: "rock", lose: "paper"}, 
    { hand: "paper", lose: "scissors"},
    {hand: "scissors", lose: "rock"} ]
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

  def self.create(human, computer)
    @game = Game.new(human, computer)
  end

  def self.instance
    @game
  end

  private

  def result
    if @human.hand == @computer.hand
      draw
    else
      check_hand
    end
  end

  def check_hand
    RULES.map.with_index { |item, index|
    if item[:hand] == @computer.hand
      win?(item, @human.hand)
    end 
    }
  end

  def win?(item, hand)
    if item[:lose] == hand
      assign_points(@human, "won")
    else
      assign_points(@computer, "lost")
    end
    check_finish
  end

  def assign_points(player, status)
    player.add_points
    @round_status = status
  end

  def draw
    @round_status = "draw"
  end

  def set_hand
    @human.set_hand
    @computer.set_hand
  end

  def check_finish
    if @human.points >= 2 || @computer.points >= 2
      @finish = true
      who_won?
    end
  end

  def who_won?
    @human.points > @computer.points ? @round_status = "You won!! Yay!!" : @round_status = "Bad luck! better luck next time"
  end
end
