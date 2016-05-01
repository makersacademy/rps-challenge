class Round

  Weapons = ['Rock', 'Paper', 'Scissors']

  attr_reader :player_1, :weapon_choice

  def initialize(player_1, weapon)
    @player_1 = player_1
    @weapon_choice = weapon
  end

    def self.create(player_1, weapon)
      @round = Round.new(player_1, weapon)
    end

    def self.instance
      @round
    end

    



end
