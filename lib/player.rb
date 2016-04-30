class Player

attr_reader :name, :choice
ATTACKS = ['Rock', 'Paper', 'Scissors']

  def initialize(name = 'AI')
    @name = name
  end

  def choose(choice = Random.rand(3))
    return @choice = choice unless choice.is_a? Integer
    @choice = ATTACKS[choice]
  end

end
