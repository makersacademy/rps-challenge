class Computer
  attr_reader :weapon, :choice

  def weapon
    [:Rock, :Paper, :Scissors].sample
  end
end