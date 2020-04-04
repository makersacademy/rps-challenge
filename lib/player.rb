class Player

  attr_reader :opponent_attack, :name
  def initialize(name)
    @name =name
    @opponent_attack = ['rock'].sample
    @attack = 'rock'
  end


  def compare
    if @attack == opponent_attack
      "draw"
    end 

  end
end 