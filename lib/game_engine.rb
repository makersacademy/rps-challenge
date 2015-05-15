class GameEngine
  attr_accessor :player_choice, :cpu_choice


  def result(player_choice)
     :TIE if player_choice == cpu_choice
  end

  def cpu_choice
    options = [:rock, :paper, :scissors]
    cpu_choice = options[rand(3)]
  end
end