class GameEngine
  attr_accessor :player_choice


  def result(player_choice)

    if
      player_choice == :rock && cpu_choice == :scissors ||
      player_choice == :scissors && cpu_choice == :paper ||
      player_choice == :paper && cpu_choice == :rock
      puts :WIN
    elsif
      player_choice == cpu_choice
      :TIE
    else
      :LOSE
    end
  end

  def cpu_choice(rand_no=3)
    options = [:rock, :paper, :scissors]
    options[rand(0..2)]
  end


  def random
    options[rand(1..3)]
  end

end
