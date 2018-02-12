require_relative 'player'

class MultiGame

    attr_accessor :players, :player_1_weapon, :player_2_weapon

    def self.create(players)
      @multi_game = MultiGame.new(players)
    end

    def self.instance
      @multi_game
    end

    def initialize(players)
      @players = players
      @player_1_weapon = nil
      @player_2_weapon = nil
    end

    def player_one
      @players.first
    end

    def player_two
      @players.last
    end

    def player_weapon
      ['scissors', 'paper', 'rock'].sample
    end

    def calculate_result(pl1, pl2)
      return "#{player_one.name} won" if pl1 == 'scissors' && pl2 == 'paper'
      return "#{player_one.name} won" if pl1 == 'paper' && pl2 == 'rock'
      return "#{player_one.name} won" if pl1 == 'rock' && pl2 == 'scissors'
      return 'Draw!' if pl1 == pl2
        "#{player_two.name} won"
    end

end
