class Computer
  attr_reader :choice

  def get_choice
    @choice = ['rock', 'paper', 'scissors'].sample
  end
end