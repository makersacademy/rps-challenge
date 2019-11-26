require_relative 'players'
class Game

  def initialize(player_1, player_2)
    @players = [player_1, player_2]
  end

  def player_1
    @players.first
  end

  def player_2
    @players.last
  end

  def hit(player_1,player_2)
    if player_1.choice == "rock" && player_2.choice == "scissors"
      puts "#{player_1} wins"

    elsif player_1.choice == "scissors" && player_2.choice == "rock"
      puts "#{player_2}"

    elsif player_1.choice == "scissors" && player_2.choice == "paper"
      puts "#{player_1}"

    elsif player_1.choice == "paper" && player_2.choice == "scissors"
      puts "#{player_2}"

    elsif player_1.choice == "rock" && player_2.choice == "paper"
      puts "#{player_2}"

    elsif player_1.choice == "paper" && player_2.choice == "rock"
      puts "#{player_1}"

    elsif
      player_1.choice == player_1.choice

      puts "Its a draw"

    end
  end

end
