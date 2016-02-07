class Drago
  attr_reader :name, :options

  def initialize
    @name   = 'Drago'
    @options = ['Rock', 'Paper', 'Scissors']
  end

  def choice
    @options.sample
  end

end
