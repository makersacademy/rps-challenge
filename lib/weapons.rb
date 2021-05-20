class Weapon
  attr_reader :choices, :results
  def initialize
    @choices = ['Rock', 'Paper', 'Scissors']
    @results = {
      Rock: { Scissors: true },
      Paper: { Rock: true },
      Scissors: { Rock: true}
    }
  end
end  