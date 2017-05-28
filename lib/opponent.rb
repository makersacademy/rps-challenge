class Opponent

  def initialize
    @weapon_choices = ["rock","paper",'scissors']
  end
  def make_weapon_choice(choice = rand(0..2))
    @weapon_choices[choice]
  end
end
