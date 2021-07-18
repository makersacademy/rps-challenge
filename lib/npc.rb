class Npc
  attr_reader :selection

  def initialize
    @selection = random_selection
  end

  private

  def random_selection
    ['Rock', 'Paper', 'Scissors'].sample
  end
end
