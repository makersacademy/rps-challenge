class AutomatedOpponent
  attr_reader :automated_choice

  def initialize
    @automated_choice = ["Rock 🤘", "Paper 📄", "Scissors ✂️", "Lizard 🦎", "Spock 🖖"].sample
  end

  def self.create
    @choice = AutomatedOpponent.new
  end

  def self.instance
    @choice
  end
end
