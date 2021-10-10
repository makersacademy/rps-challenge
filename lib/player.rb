class Player 

  attr_reader :name

  def initialize(name = "anon")
    @name = name 
  end 

  def set_name(name)
    @name = name 
  end 

  def set_move(move)
    raise "Please select a valid option" unless valid(move)
    move.to_sym
  end

  private 

  def valid(move)
    ['rock', 'paper', 'scissors'].include? move 
  end 

end
