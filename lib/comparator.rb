require_relative 'paper'
require_relative 'rock'
require_relative 'scissor'

module Comparator
                
  def self.compair comparable_player_1, comparable_player_2
    operation comparable_player_1, comparable_player_2
  end

  def self.operation comparable_player_1, comparable_player_2

    if (ShapeCreator.call(comparable_player_1.first) > comparable_player_2.first)
      comparable_player_1.last
    elsif (ShapeCreator.call(comparable_player_2.first) > comparable_player_1.first)
      comparable_player_2.last 
    else
      nil
    end

  end

end


Comparator::ShapeCreator = -> (shape) {Kernel.const_get(shape.to_s.capitalize).new}  