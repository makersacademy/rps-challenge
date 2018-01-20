class Game

  attr_reader :player1, :player2

  def initialize(player1, player2)
    @player1 = player1
    @player2 = player2
  end
# def rock_paper_scissors
#
#   if choose_1 == "rock"
#     if choose_pc_input == "rock"
#       puts "It's a draw"
#     elsif choose_pc_pc_input == "scissors"
#       puts "Player wins"
#     elsif choose_pc_input == "paper"
#       puts "Pc wins"
#     end
#
#   elsif choose_1 == "scissors"
#     if choose_pc == "rock"
#       puts "Pc wins"
#     elsif player2 == "scissors"
#       puts "It's a draw"
#     elsif player2 == "paper"
#       puts "Player wins"
#     end
#
#   elsif choose_1 == "paper"
#     if choose_pc == "rock"
#       puts "Player wins"
#     elsif choose_pc == "scissors"
#       puts "Pc wins"
#     elsif choose_pc == "paper"
#       puts "It's a draw"
#     end
#   end
# end
end
