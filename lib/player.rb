class Player

  attr_reader :name, :human

  def initialize(name:, human: true)
    @name = name
    @human = human
  end

end
