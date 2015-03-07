class Player

  attr_accessor :name, :weapon_choice

  def initialize(arguments_hash)
    @name = arguments_hash[:name]
  end

end