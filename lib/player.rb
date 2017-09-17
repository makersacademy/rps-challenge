class Player
  attr_reader :name
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
