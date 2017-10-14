class Weapon

  def versus(computer_choice)
      @strong_against.each {|loser| return "Win" if computer_choice.is_a? loser }
      @weak_against.each {|winner| return "Lose" if computer_choice.is_a? winner}
      @draws_against.each {|equal| return "Draw" if computer_choice.is_a? equal }
    end

end
