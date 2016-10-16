class Game

  attr_reader :result

  def self.create
    @game = Game.new
  end

  def self.instance
    @game
  end

  def initialize
    @result
  end

  def who_win(player, computer)
    if player == computer
      @result = "Draw!"
    elsif (player == "Rock") && (computer == "Paper")
      @result = "Computer Wins!"
    elsif (player == "Rock") && (computer == "Scissor")
      @result = "You wins!"
    elsif (player == "Paper") && (computer == "Rock")
      @result = "You wins!"
    elsif (player == "Paper") && (computer == "Scissor")
      @result = "Computer wins!"
    elsif (player == "Scissor") && (computer == "Rock")
      @result = "Computer wins!"
    elsif (player == "Scissor") && (computer == "Paper")
      @result = "You wins!"
    end
  end

end
