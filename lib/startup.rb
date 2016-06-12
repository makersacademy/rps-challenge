require_relative 'weapon'

module Startup
  WEAPONS = [
    Weapon.new(
      name: "Rock",
      inflictions: ["crushes"],
      weaknesses: ["covers", "vaporizes"]
    ),
    Weapon.new(
      name: "Paper",
      inflictions: ["disproves", "covers"],
      weaknesses: ["cuts", "eats"]
    ),
    Weapon.new(
      name: "Scissors",
      inflictions: ["cuts", "decapitates"],
      weaknesses: ["smashes", "crushes"]
    ),
    Weapon.new(
      name: "Spock",
      inflictions: ["vaporizes", "smashes"],
      weaknesses: ["disproves", "poisons"]
    ),
    Weapon.new(
      name: "Lizard",
      inflictions: ["poisons", "eats"],
      weaknesses: ["decapitates", "crushes"]
    )
  ]
end
