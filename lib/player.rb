
# Understands input choices
class Player
  attr_reader :name, :choice, :old_name
  attr_writer :name

  def initialize(name, choice)
    @name = name
    @name = "Player" if @name == ""
    @choice = choice.to_sym
  end

  def message
    "#{@name} chose #{@choice}"
  end

end
