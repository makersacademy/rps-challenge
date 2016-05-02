class Computer

  CHOICE=['rock','paper','scissors']
attr_reader :computer_choice
  def initialize
    @computer_choice = computer_chooser
  end

private

  def computer_chooser
    CHOICE.shuffle.first
  end
end
