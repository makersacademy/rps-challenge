class Choices

  CHOICES = {
             scissors: 0,
             paper: 1,
             rock: 2,
             lizard: 3,
             spock: 4
            }
  VERBS = {
           spockscissors: "smashes", scissorspaper: "cuts",
           paperrock: "covers", rocklizard: "crushes",
           lizardspock: "poisons", spockrock: "vaporizes",
           scissorslizard: "decapitates", paperspock: "disproves",
           rockscissors: "crushes", lizardpaper: "eats"
          }
  CLASSIC = 3
  SPOCK = 5

  attr_accessor :choice

  def self.to_i(choice)
    CHOICES[choice.to_sym]
  end

  def self.verb(winner,loser)
    VERBS[(winner+loser).to_sym]
  end




end