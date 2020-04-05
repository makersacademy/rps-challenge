class Player

  attr_reader :opponent_attack, :name, :attack
  def initialize(name)
    @name =name
    @opponent_attack = ['rock'].sample
    @attack 
  end

  def play(object)
    @attack = object
  end 



  def compare
    if @attack == opponent_attack
      "draw"
    end 

  end
end 