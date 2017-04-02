
class Player
  DEFAULT_NAMES = ['Mary Dingle', "Roi's Beard", "A 5 Year Old Arnie", "The Phattest Jeffrey You Ever Saw", "Terry Crew's Left Nipple"]

  attr_reader :name, :choice

  def initialize(name=DEFAULT_NAMES.sample)
    @name = name
    @choice
  end


  def make_choice(input_choice)
    self.choice = input_choice
  end


  private

  attr_writer :choice


end
