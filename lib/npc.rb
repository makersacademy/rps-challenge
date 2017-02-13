class Npc

  attr_reader :name

  def initialize(name = "NPC")
    @name = name
  end

  def choose
    [:rock, :paper, :scissors].sample
  end
end
