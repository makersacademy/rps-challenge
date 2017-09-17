class Player
  attr_reader :name

  def self.create(name)
    @player = Player.new(name)
  end

  def self.instance
    @player
  end

  def initialize(name = 'Computer')
    @name = name
    @attacks = ['Rock', 'Paper', 'Scissors']
  end

  def random_attack(attacks = @attacks)
    attacks.sample
  end

  private
  attr_reader :attacks
end
