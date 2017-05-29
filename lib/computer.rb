class Computer

  attr_reader :name

  def initialize
    @name = "The Evil Computer"
  end

  # TODO consider using srand with rand or assigning this to a consanant 
  def weapon_choice
    [:rock, :paper, :scissors].sample
  end
end
