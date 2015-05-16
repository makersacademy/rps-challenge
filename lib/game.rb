# class RockPaperScissors
#   def initialize player_1, player_2
#     @player1 = player_1
#     @player2 = player_2
#     @winning_scenario = [[:paper, :rock],[:scissors, :paper], [:rock, :scissors]]
#   end

#   def play
#       fail '2 Players needed' unless ready?
#       who_won?(player1.choice, player2.choice)
#   end

#   def winning
#     rock_wins= (player_2_move == ['Scissors'] && move == ['Rock'])
#     scissors_wins = (player_2_move == ['Paper'] && move == ['Scissors'])
#     paper_wins = (player_2_move == ['Rock'] && move == ['Paper'])
#     true if rock_wins || scissors_wins || paper_wins
#   end

#   def losing
#         paper_loses = (move == ['Paper'] && player_2_move == ['Scissors'])
#     scissors_loses = (move == ['Scissors'] && player_2_move == ['Rock'])
#     rock_loses = (move == ['Rock'] && player_2_move == ['Paper'])
#     true if paper_loses || scissors_loses || rock_loses
#   end
# end