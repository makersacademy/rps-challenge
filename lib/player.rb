class Player

  def initialize(name)
    @name = name
  end

  def show_name
    name
  end

  private

  attr_reader :name
  
end
