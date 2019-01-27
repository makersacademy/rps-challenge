class Game

  attr_reader :player_score, :computer_score, :winner

  def initialize
    @player_score = 0
    @computer_score = 0
    @winner
  end

  # def move(hand)
  #   play_hand(hand)
  # end

  # def switch_turns
  # end

  def check_round_winner(player_move, computer_move)
    if player_move == "Rock" && computer_move == "Paper"
      @computer_score += 1
    elsif player_move == "Paper" && computer_move == "Scissors"
      @computer_score += 1
    elsif player_move == "Scissors" && computer_move == "Rock"
      @computer_score += 1
    elsif player_move == computer_move
    else
      @player_score += 1
    end
  end

  def end_game?
    if @player_score == 2 || @computer_score == 2
      find_winner
      true
    else
      false
    end
  end

  private

  def find_winner
    @winner = @player_score > @computer_score ? "Player" : "Computer"
  end

  # def play_hand(number)
  #   if number == 0
  #     "Rock"
  #   elsif number == 1
  #     "Paper"
  #   else
  #     "Scissors"
  #   end
  # end

end
