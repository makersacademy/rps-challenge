class Game

  attr_reader :player1_choice, :player2_choice, :players

  def initialize(player1, player2 = Player.new("Computer"))
    @players = [player1, player2]
    @player1_choice = ""
    @player2_choice = ""
  end

  def return_player(player)
    @players[player-1]
  end

  def random_choice
    @player2_choice = ["Rock","Paper","Scissors"].sample
  end

  def game_message
    @player1_choice == "" ? "Click a Button, Good Luck!" : "#{@players[0].name} played #{@player1_choice} and #{@players[1].name} played #{@player2_choice}"
  end

  def play(player_choice)
    @player1_choice = player_choice

    if @player1_choice == "Rock" && @player2_choice == "Scissors"
      @players[0].add_point
    elsif @player1_choice == "Paper" && @player2_choice == "Rock"
      @players[0].add_point
    elsif @player1_choice == "Scissors" && @player2_choice == "Paper"
      @players[0].add_point
    elsif @player1_choice == "Rock" && @player2_choice == "Paper"
      @players[1].add_point
    elsif @player1_choice == "Scissors" && @player2_choice == "Rock"
      @players[1].add_point
    elsif @player1_choice == "Paper" && @player2_choice == "Scissors"
      @players[1].add_point
    elsif @player1_choice == @player2_choice
      nil
    end
  end
end
