# class Rules
#
#   def rock_results(player, opponent)
#     if opponent == 'Rock'
#       draw
#     elsif opponent == 'Scissors'
#       win(player, opponent)
#     else
#       lose(player, opponent)
#     end
#   end
#
#   def paper_results(player, opponent)
#     if opponent == 'Paper'
#       draw
#     elsif opponent == 'Rock'
#       win(player, opponent)
#     else
#       lose(player, opponent)
#     end
#   end
#
#   def scissors_results(player, opponent)
#     if opponent == 'Scissors'
#       draw
#     elsif opponent == 'Paper'
#       win(player, opponent)
#     else
#       lose(player, opponent)
#     end
#   end
#
#   def draw
#     'A draw!'
#   end
#
#   def win(win, lose)
#     self.player.score += 1
#     "You win! #{win} beats #{lose}!"
#   end
#
#   def lose(lose, win)
#     self.opponent.score += 1
#     "You lose! #{win} beats #{lose}!"
#   end
#
# end
