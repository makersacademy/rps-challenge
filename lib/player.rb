class Player
  attr_accessor :choice, :selection, :name
  def initialize name
    @name = name
    @choice = []
  end

  def select(selection)
    @choice << selection.downcase.to_sym
  end

  def ready?
    @choice.any?
  end
end