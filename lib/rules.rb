# Responsible for deciding who wins
class Rules

  WEAPONS = { :Rock => [:Scissors, :Lizard],
             :Paper => [:Rock, :Spock],
             :Scissors => [:Paper, :Lizard],
             :Lizard => [:Spock, :Paper],
             :Spock => [:Scisors, :Rock]
           }

  def draw?(players_array)
    players_array.first.choice == players_array.last.choice
  end

  def check_rules(players_array)
    WEAPONS[players_array.first.choice].include?(players_array.last.choice)
  end
end
