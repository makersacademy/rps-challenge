# Responsible for deciding who wins
class Rules

  def initialize
    @beats = { :Rock => :Scissors, :Paper => :Rock, :Scissors => :Paper }
  end

  def draw?(players_array)
    players_array.first.choice == players_array.last.choice
  end

  def check_rules(players_array)
    players_array.last.choice == @beats[players_array.first.choice]
  end
end
