class Player

  attr_reader :name, :choice

  def initialize(name = 'no_name', choice)
    @name = name
    @choice = choice.to_sym
  end

end
