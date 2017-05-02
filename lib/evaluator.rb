# require_relative './game'
# require_relative './player'
# require_relative './computer'
#
# class Evaluator
#   attr_reader :a, :b, :hand, :message
#
#   def initialize
#   end
#
#   def evaluate
#     @message = "It's a draw! Try again!" if draw?
#     @message = "#{@b.name} won!!" if b_wins?
#     @message = "#{@a.name} won!!" if a_wins?
#   end
#
#   def draw?
#     @a.hand == @b.hand
#   end
#
#   def a_wins?
#     @a.hand == 1 && @b.hand == 3 || @a.hand == 2 && @b.hand == 1 || @a.hand == 3 && @b.hand == 2
#   end
#
#   def b_wins?
#     @a.hand == 2 && @b.hand == 3 || @a.hand == 3 && @b.hand == 1 || @a.hand == 1 && @b.hand == 2
#   end
#
# end
