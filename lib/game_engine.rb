class GameEngine
  attr_accessor :player_choice
  attr_accessor :cpu_choice


  def result(player_choice)

    if player_choice == :rock && cpu_choice == :scissors || player_choice == :scissors && cpu_choice == :paper || player_choice == :paper && cpu_choice == :rock
      :WIN
    elsif
      player_choice == cpu_choice
      :TIE
    else
      :LOSE
    end
  end

  def cpu_choice(rand_no=3)
    options = [:rock, :paper, :scissors]
    options[rand_no-1]
  end


  def random
    options[rand(3)]
  end

end
