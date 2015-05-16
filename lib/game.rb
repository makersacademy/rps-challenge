class Game

  def initialize(player1, player2)
    @player1 = player1
    @player2 = player2
  end

  def play_game
    if @player1.human_weapon == 'Rock' && (@player2.weapon == 'Paper' || @player2.weapon == 'Spock')
      return "The computer chose #{@player2.weapon} which beats your Rock: The Computer wins!"
    elsif @player1.human_weapon == 'Paper' && (@player2.weapon == 'Scissors' || @player2.weapon == 'Lizard')
      return "The computer chose #{@player2.weapon} which beats your Paper: The Computer wins!"
    elsif @player1.human_weapon == 'Scissors' && (@player2.weapon == 'Rock' || @player2.weapon == 'Spock')
      return "The computer chose #{@player2.weapon} which beats your Scissors: The Computer wins!"
    elsif @player1.human_weapon == 'Lizard' && (@player2.weapon == 'Rock' || @player2.weapon == 'Scissors')
      return "The computer chose #{@player2.weapon} which beats your Lizard: The Computer wins!"
    elsif @player1.human_weapon == 'Spock' && (@player2.weapon == 'Paper' || @player2.weapon == 'Lizard')
      return "The computer chose #{@player2.weapon} which beats your Spock:  The Computer wins!"
    elsif @player1.human_weapon == 'Rock' && (@player2.weapon == 'Scissors' || @player2.weapon == 'Lizard')
      return "The computer chose #{@player2.weapon} which is beaten by your Rock: You win!"
    elsif @player1.human_weapon == 'Paper' && (@player2.weapon == 'Rock' || @player2.weapon == 'Spock')
      return "The computer chose #{@player2.weapon} which is beaten by your Paper: You win!"
    elsif @player1.human_weapon == 'Scissors' && (@player2.weapon == 'Paper' || @player2.weapon == 'Lizard')
      return "The computer chose #{@player2.weapon} which is beaten by your Scissors: You win!"
    elsif @player1.human_weapon == 'Lizard' && (@player2.weapon == 'Spock' || @player2.weapon == 'Paper')
      return "The computer chose #{@player2.weapon} which is beaten by your Lizard: You win!"
    elsif @player1.human_weapon == 'Spock' && (@player2.weapon == 'Rock' || @player2.weapon == 'Scissors')
      return "The computer chose #{@player2.weapon} which is beaten by your Spock: You win!"
    else
      return "You both chose #{@player1.human_weapon}, its a tie: Try again!"
    end
  end

end
