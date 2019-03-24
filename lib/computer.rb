class Computer
  
  attr_reader :weapon

  OPTIONS = ['rock', 'paper', 'scissors']

  def random_choice
    @weapon = OPTIONS.sample
  end

end
