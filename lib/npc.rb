class NPC

  attr_reader :name, :choice

  def initialize
    @name = "Computer Player"
  end

  def make_choice(rules)
    @choice = rules.choices.sample
  end
end
