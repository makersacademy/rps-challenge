class Player

  attr_reader :name

  def initialize(name)
    @name = name
    @choice = nil
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

end
