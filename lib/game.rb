class Game

  def initialize(player1, player2)
    @player1 = player1
    @player2 = player2
  end

  def play_game
    if @player1.human_weapon == 'Rock' && @player2.weapon == 'Paper'
      return "The computer chose #{@player2.weapon} which wraps your Rock: The Computer wins!"
    elsif @player1.human_weapon == 'Paper' && @player2.weapon == 'Scissors'
      return "The computer chose #{@player2.weapon} which cut your Paper: The Computer wins!"
    elsif @player1.human_weapon == 'Scissors' && @player2.weapon == 'Rock'
      return "The computer chose #{@player2.weapon} which smashes your Scissors: The Computer wins!"
    elsif @player1.human_weapon == 'Rock' && @player2.weapon == 'Scissors'
      return "The computer chose #{@player2.weapon} that are smashed by your Rock: You win!"
    elsif @player1.human_weapon == 'Paper' && @player2.weapon == 'Rock'
      return "The computer chose #{@player2.weapon} which is wrapped by your Paper: You win!"
    elsif @player1.human_weapon == 'Scissors' && @player2.weapon == 'Paper'
      return "The computer chose #{@player2.weapon} which is cut by your Scissors: You win!"
    else
      return "You both chose #{@player1.human_weapon}, its a tie: Try again!"
    end
  end
end
