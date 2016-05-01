class Round

  Weapons = [:Rock, :Paper, :Scissors]

  attr_reader :player_1

  def initialize(player_1)
    @player_1 = player_1
  end

    def self.create(player_1)
      @round = Round.new(player_1)
    end

    def self.instance
      @round
    end





end
