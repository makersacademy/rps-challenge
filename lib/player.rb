class Player

  attr_reader :options

  attr_accessor :selected

  def initialize
    @options = ["rock", "paper", "scissors" ]
    @selected = ""
  end

  def choice(selection)

    case selection
    when "rock"
      self.selected = "rock"
      # (selection ||= "") << "rock"
    when "paper"
      self.selected = "paper"
    when "scissors"
      self.selected = "scissors"
    else
      raise "You have not made a valid selection"
    end
      selected
  end

end
