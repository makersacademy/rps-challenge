class Choices

  CHOICES = {
             scissors: 0,
             paper: 1,
             rock: 2,
             lizard: 3,
             spock: 4
            }
  CLASSIC = 3
  SPOCK = 5

  attr_accessor :choice

  def to_i
    CHOICES[choice.to_sym]
  end

end