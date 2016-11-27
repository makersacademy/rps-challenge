module Weapons

	WEAPONS = [:rock, :paper, :scissors, :lizard, :spock]
	WIN_SCENARIOS = { rock: [:scissors, :lizard],
						paper: [:rock, :spock],
						scissors: [:paper, :lizard],
						lizard: [:paper, :spock],
						spock: [:rock, :scissors] }

	def beats?(weapon1, weapon2)
		WIN_SCENARIOS[weapon1].include? weapon2
	end

end