class Game

  YOU_WON = "You are the winner!"
  I_WON = "This one's for me"
  DRAW = "It's a draw!"

  attr_reader :name, :choice_my

  def initialize(name)
    @name = name
    results = {}
  end

  def choose_mine
    @choice_my = choice_rand
  end

  def the_winner_is(yours,mine)
    you_win = [["Rock","Scissors"], ["Paper", "Rock"],
      ["Scissors", "Paper"]]
    i_win = [["Rock", "Paper"], ["Paper", "Scissors"],
      ["Scissors", "Rock"]]
    return YOU_WON if you_win.include?([yours,mine])
    return I_WON if i_win.include?([yours,mine])
    return DRAW if yours == mine
  end


  def choice_rand
    choices = ['Rock', 'Paper', 'Scissors']
    choices[Kernel.rand(3)]
  end

end
