class Game

  attr_reader :player_score, :computer_score, :player, :player_choice

  def initialize player
    @player = player
    @player_score = 0
    @computer_score = 0
    win_array
    lose_array
  end

  def self.create player_1
    @game = Game.new player_1
  end

  def self.instance
    @game
  end

  def choices player_choice
    computer
    @player_choice = player_choice
    @choices_array =  [@player_choice, @computer_choice]
  end

  def pc_choice
    @computer_choice.dup
  end

  def result
    decide
    @result.dup
  end

  private

  def decide
    win
    lose
    draw
  end

  def points
    if @result == "won"
      @player_score += 1
    elsif @result == "lost"
      @computer_score += 1
    end
  end

  def computer
    @computer_choice = ["rock", "paper", "scissors"].sample
  end

  def win
     @result = "won" if @win_array.include? @choices_array
  end

  def draw
    @result = "drew" if @choices_array[0] == @choices_array[1]
  end

  def lose
    @result = "lost" if @lose_array.include? @choices_array
  end

  def win_array
    @win_array = [["rock", "scissors"], ["scissors", "paper"], ["paper", "rock"]]
  end

  def lose_array
    @lose_array = [["scissors", "rock"], ["paper", "scissors"], ["rock", "paper"]]
  end
end
