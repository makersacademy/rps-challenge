class Settings

  CLASSIC = {
    "rock" => ["scissors"],
    "paper" => ["rock"],
    "scissors" => ["paper"]
    }

  SPOCK = {
    "rock" => %w(lizard scissors),
    "paper" => %w(rock spock),
    "scissors" => %w(lizard paper),
    "lizard" => %w(paper spock),
    "spock" => %w(scissors rock)
    }

  attr_reader :weapon_hash

  def initialize(gamevariant = "CLASSIC")
    # p gamevariant
    # if gamevariant.upcase == "CLASSIC"
     # p Settings.const_get(gamevariant.upcase)
    # if gamevariant.casecmp("CLASSIC").zero?
    @weapon_hash = Settings.const_get(gamevariant.upcase)
    # else
      # @weapon_hash = Settings.const_get(gamevariant.upcase)
    # end
  end

  def weapon_list
    @weapon_hash.keys
  end
end
