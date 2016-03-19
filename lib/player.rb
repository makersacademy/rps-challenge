class Player
  attr_reader :name, :type

  def initialize(name:, type: 'human')
    @name = name
    @type = type.to_sym
  end
end
