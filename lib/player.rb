class Player
  attr_reader :name, :option
    
  def initialize(name)
    @name = name.empty? ? "Computer" : name
  end

  def choice(option)
    @option = @name == "Computer" ? computer_option : option
  end

  private

  def computer_option
    %w(Rock Paper Scissors).sample
  end
  
end
