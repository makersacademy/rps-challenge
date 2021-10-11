require_relative "rps"

class SinglePlayer
  include Action
  
  attr_reader :name, :choice, :ai_choice
  DEFAULT_CHOICE = ["rock", "paper", "scissors"].freeze

  def initialize(name)
    @name = name
    @choice = nil
    @ai_choice = nil
  end

  def random
    @choice = DEFAULT_CHOICE.sample
  end
  
  def option(type)
    @choice = type
  end
  
  def computer
    @ai_choice = DEFAULT_CHOICE.sample
  end
  
  def self.create(name)
    @game = SinglePlayer.new(name)
  end
  
  def self.instance
    @game
  end
    
end
