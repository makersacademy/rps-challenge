class Player

  attr_reader :name, :choice

  def initialize(name)
    @name = name
    @choice
  end

  def save_choice(input)
    self.choice = input.to_sym
  end

  def self.set_instance(name)
    @player = Player.new(name)
  end

  def self.get
    @player
  end

  private
  attr_writer :choice
end
