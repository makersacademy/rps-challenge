class Player
  @new_player
  attr_reader :name, :choice

  def initialize
    @name = nil
    @choice = nil
  end

  def self.create
    @new_player = Player.new
  end

  def self.instance
    @new_player
  end

  def add_name(name)
    @name = name
  end

  def choose(weapon)
    @choice = weapon.downcase.to_sym
  end


end
