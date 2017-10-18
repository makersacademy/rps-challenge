class Weapon

  def versus(opponent_choice)
    @strong_against.each {|loser| return "Wins" if opponent_choice.is_a? loser }
    @weak_against.each {|winner| return "Loses" if opponent_choice.is_a? winner}
    @draws_against.each {|equal| return "Draw" if opponent_choice.is_a? equal }
  end

end
