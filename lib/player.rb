module Player

  NAMES = %w(Adrian Basile Ben Gurminder James Jaycee Joe Justin Matthew Olwen Paul Pete Rob Sam).freeze
  CHOICES = %w(Rock Paper Scissors).freeze

  def self.name(name=nil)
    name != "" ? name.capitalize : NAMES.shuffle.sample
  end

  def self.choice(choice=nil)
    choice ? choice : CHOICES.shuffle.sample
  end

end
