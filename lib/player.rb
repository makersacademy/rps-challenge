class Player
  attr_reader :name, :choice, :old_name

  def initialize(name, choice)
    @name = name
    @choice = choice.to_sym
  end

  def message
    "#{@name} chose #{@choice}"
  end

end
