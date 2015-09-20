class HumanPlayer

  attr_reader :name, :wins

  def initialize(name)
    @wins = 0
    @name = name
    fail "You did not enter a name. Please enter your name." unless @name != ""
  end

  def set_throw(select_throw)
    @select_throw = select_throw
  end

  def return_throw
    @select_throw
  end

  def win!
    @wins +=1
  end

end