class Computer

WEAPONS = [:Rock, :Paper, :Scissors].freeze

  def self.random_select
    WEAPONS.sample
  end

end
