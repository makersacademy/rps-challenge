class Player

  def initialize(name)
    @name = name
  end

  def name
    return "Jamie Doe" if @name == ''

    @name
  end

end
