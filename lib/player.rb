class Player
  attr_reader :name, :win_counts, :turn_choice
  
  def initialize(name)
    @name = name
    @win_counts = 0
    @turn_choice = nil
  end

  def chooses(choice)
    @turn_choice = choice.to_sym
  end


  def wins
    @win_counts +=1
  end

end