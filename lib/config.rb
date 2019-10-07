class Config

  attr_reader :mode, :players

  OPTIONS = [:rock, :paper, :scissors, :lizard, :spock]
  WINS = [:rock, :scissors],
  [:paper, :rock],
  [:scissors, :paper],
  [:rock, :lizard],
  [:paper, :spock],
  [:scissors, :lizard],
  [:lizard, :spock],
  [:lizard, :paper],
  [:spock, :rock],
  [:spock, :scissors]

  def initialize(mode, players)
    @mode = mode
    @players = players
  end

  def self.create(mode, players)
    @config = Config.new(mode, players)
  end

  def self.instance
    @config
  end

  def options
    return OPTIONS[0..2] if @mode == "Regular"
    return OPTIONS[0..4] if @mode == "Hard"
  end

  def wins
    return WINS[0..2] if @mode == "Regular"
    return WINS[0..9] if @mode == "Hard"
  end

end
