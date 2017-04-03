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
    if @player.nil?
      @player = Player.new(name)
    else
      @player2 = Player.new(name)
    end
  end

  def self.get
    [@player, @player2]
  end

  private
  attr_writer :choice
end
