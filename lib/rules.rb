# Responsible for deciding who wins
class Rules

  def initialize
    @beats = { :Rock => [:Scissors, :Lizard],
               :Paper => [:Rock, :Spock],
               :Scissors => [:Paper, :Lizard],
               :Lizard => [:Spock, :Paper],
               :Spock => [:Scisors, :Rock] }
  end

  def draw?(players_array)
    players_array.first.choice == players_array.last.choice
  end

  def check_rules(players_array)
    @beats[players_array.first.choice].include?(players_array.last.choice)
  end
end
