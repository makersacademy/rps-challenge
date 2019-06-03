class Game

  attr_reader :computer_move

  def initialize(computer_move = ComputerMove.new, player_move = PlayerMove.new)
    @computer_move = computer_move
    @player_move = player_move
  end

  # Currently trying to get computer_move to display move using encapsulation with a method?

end

# player_1_count = 0
# player_2_count = 0
#
# while true do
#   puts "Player 1, it's your go"
#   player_1_answer = gets.chomp.downcase
#
#   puts "Player 2, it's your go"
#   player_2_answer = gets.chomp.downcase
#
#   if (player_1_answer == 'rock') && (player_2_answer == 'paper')
#     player_2_count = player_2_count + 1
#   elsif (player_1_answer == 'rock') && (player_2_answer == 'scissors')
#     player_1_count = player_1_count + 1
#   elsif (player_1_answer == 'paper') && (player_2_answer == 'rock')
#     player_1_count = player_1_count + 1
#   elsif (player_1_answer == 'paper') && (player_2_answer == 'scissors')
#     player_2_count = player_2_count + 1
#   elsif (player_1_answer == 'scissors') && (player_2_answer == 'rock')
#     player_2_count = player_2_count + 1
#   elsif (player_1_answer == 'scissors') && (player_2_answer == 'paper')
#     player_1_count = player_1_count + 1
#   else
#     player_1_count = player_1_count + 1
#     player_2_count = player_2_count + 1
#   end
#
#   break
#
# end
#
# if player_1_count > player_2_count
#   puts 'Player 1 wins'
# elsif player_2_count > player_1_count
#   puts 'Player 2 wins'
# else
#   puts 'It\'s a draw'
# end
