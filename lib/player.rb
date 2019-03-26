class Player

  attr_reader :name
  attr_writer :choice

  def initialize(name)
    @name = name
    @choice = nil
    @score = 0
  end

  def self.validate(input)
    Player.new(input) if input != ""
  end

  def win
    @name
  end

  def user_choice
    @choice
  end

  def assigned_choice?
    @choice != nil
  end

  def reset
    @choice = nil
  end
  
  def increase_score
    @score += 1
  end

  def retrieve_score
    @score
  end

  def exit
    @score = nil
    @choice = nil
    @name = nil
  end

end
