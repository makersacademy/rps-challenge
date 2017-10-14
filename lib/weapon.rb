class Weapon

  def versus(computer_choice)
      @strong_against.each {|loser| return "Wins" if computer_choice.is_a? loser }
      @weak_against.each {|winner| return "Loses" if computer_choice.is_a? winner}
      @draws_against.each {|equal| return "Draw" if computer_choice.is_a? equal }
    end

end
