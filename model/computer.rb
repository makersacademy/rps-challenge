class Computer
  DEFAULT_OPTION = 'Rock'
  attr_reader :computers_option

  def initialize(computers_option = DEFAULT_OPTION)
    @computers_option = computers_option
  end

end
