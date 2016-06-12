require_relative 'weapon'
require_relative 'player'

module Startup
  rock = Weapon.new(
    name: "Rock",
    inflictions: ["crushes"],
    weaknesses: ["covers", "vaporizes"]
  )

  paper = Weapon.new(
    name: "Paper",
    inflictions: ["disproves", "covers"],
    weaknesses: ["cuts", "eats"]
  )

  scissors = Weapon.new(
    name: "Scissors",
    inflictions: ["cuts", "decapitates"],
    weaknesses: ["smashes", "crushes"]
  )

  spock = Weapon.new(
    name: "Spock",
    inflictions: ["vaporizes", "smashes"],
    weaknesses: ["disproves", "poisons"]
  )

  lizard = Weapon.new(
    name: "Lizard",
    inflictions: ["poisons", "eats"],
    weaknesses: ["decapitates", "crushes"]
  )

  WEAPONS = [rock, paper, scissors, spock, lizard]

  rock.defeats(scissors)
  rock.defeats(lizard)

  paper.defeats(rock)
  paper.defeats(spock)

  scissors.defeats(paper)
  scissors.defeats(lizard)

  spock.defeats(scissors)
  spock.defeats(rock)

  lizard.defeats(spock)
  lizard.defeats(paper)
end
