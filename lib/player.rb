# require_relative 'game'

class Player

  attr_accessor :selected
  attr_reader :selection

  def initialize
    @selection = ["rock", "paper", "scissors" ]
    @selected = ""
  end

  def select(choice)
    case choice
    when "rock"
      self.selected = "rock"
    when "paper"
      self.selected = "paper"
    when "scissors"
      self.selected = "scissors"
    else
      raise "You have not made a valid selection"
    end
      selected
  end

end
