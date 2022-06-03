# lib/player.rb

class Player
  attr_reader :name
  attr_accessor :choice

  def initialize(name)
    @name = name
    @choice = nil
  end

  def throw
    @choice = [:rock, :scissors, :paper].sample
    puts @choice
    @choice
  end

  # private 

  # def throw
  #   @choice = [:rock, :scissors, :paper].sample if @choice == nil
  # end
end