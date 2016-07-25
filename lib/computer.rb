
class Computer

 attr_reader :choice, :choices

  def choice
    @choices = [:Rock, :Paper, :Scissors] #use sympols
    @choice = @choices.sample
  end

end
