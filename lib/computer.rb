
class Computer


  def chosen_weapon
    @comp_weapon = ['rock', 'paper', 'scissors'].sample
  end

  def comp_rock?
    @comp_weapon == 'rock'
  end

  def comp_paper?
    @comp_weapon = 'paper'
  end

  def comp_scissors?
    @comp_weapon = 'scissors'
  end 

end
