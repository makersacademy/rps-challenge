class Game
  attr_reader :winner

  def initialize(player, computer)
    @player_name = player.name
    @player_move = player.move
    @computer_name = computer.name
    @computer_move = computer.move
    @winner = ""
  end

  def winner?
    case @player_move
    when "Rock"
      if @computer_move == "Rock"
        @winner = "Draw"
      elsif @computer_move == "Paper"
        @winner = @computer_name
      else
        @winner = @player_name
      end
    when "Paper"
      if @computer_move == "Paper"
        @winner = "Draw"
      elsif @computer_move == "Scissors"
        @winner = @computer_name
      else
        @winner = @player_name
      end
     when "Scissors"
      if @computer_move == "Scissors"
        @winner = "Draw"
      elsif @computer_move == "Rock"
        @winner = @computer_name
      else
        @winner = @player_name
      end
    end
    @winner
  end
end
