class RandomWeapon
  CHOICES = ['rock', 'paper', 'scissors']

  def initialize
    @weapon = CHOICES.sample
  end

  def show
    @weapon
  end
end
