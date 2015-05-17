class Computer

  attr_reader :moves
  def initialize
    @moves = ""
  end

  def play
    @moves = ["rock", "paper", "scissors"].sample
  end
end

# aggiungere un metodo per creare una mossa
