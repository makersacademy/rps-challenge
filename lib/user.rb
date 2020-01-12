require_relative './computer.rb'

class User

  attr_reader :name
  attr_accessor :move

  def initialize(name)
    @name = name
  end

  def make_move(move = nil)
    @move = move if @name != 'Computer'
    @move = Computer.new.move if @name == 'Computer'
  end


end
