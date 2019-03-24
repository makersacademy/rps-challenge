class Player

  attr_reader :name

  def initialize(name)
    @name = name
    @choice = nil
    @score = 0
  end

  def choice=(selection)
    @choice = selection
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

  def get_score
    @score
  end

  def exit
    @score = nil
    @choice = nil
    @name = nil
  end

end
