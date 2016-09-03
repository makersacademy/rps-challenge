class Player

  def initialize(name)
    @name = name
  end

  def return_name
    @name
  end

  private

  attr_reader :name

end
