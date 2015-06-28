class Player


  attr_reader :options


  def initialize

    @options = ['Rock', 'Paper','Scissors','Lizard','Spock']

  end


  def play choice
    fail "choice not available" unless @options.include? choice
    choice
  end



end