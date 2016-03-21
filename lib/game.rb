class Game
  attr_reader :player1, :player2

  SPOCK = { rock: [:scissors, :lizard],
            paper: [:rock, :spock],
            scissors: [:paper, :lizard],
            lizard: [:paper, :spock],
            spock: [:rock, :scissors] }.freeze

  REGULAR = { rock: [:scissors], paper: [:rock], scissors: [:paper] }.freeze

  WEAPONS_SPOCK = [:rock, :paper, :scissors, :lizard, :spock].freeze
  WEAPONS = [:rock, :paper, :scissors].freeze

  def self.create(player1:, player2:)
    self.weapons
    @instance = self.new(player1: player1, player2: player2)
  end

  def self.setup_game(rule_set: )
    self.rules_setup(rule_set)
    self.weapons_setup(rule_set)
  end

  def self.current_game
    @instance
  end

  def self.rules
    @rules.dup
  end

  def self.weapons
    @weapons.dup
  end

  def initialize(player1:, player2:)
    @player1 = player1
    @player2 = player2
  end

  def winner
    return @player1 if @player1.winner?(@player2.weapon)
    return @player2 if @player2.winner?(@player1.weapon)
  end

  def self.weapons_setup(rule_set)
    @weapons = WEAPONS if rule_set == 'regular'
    @weapons = WEAPONS_SPOCK if rule_set == 'spock'
  end

  def self.rules_setup(rule_set)
    @rules = REGULAR if rule_set == 'regular'
    @rules = SPOCK if rule_set == 'spock'
  end
end
