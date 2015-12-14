class ComputerPlayer < Player
  def initialize(element_klass = Element)
    @name = 'Computer'
    @computer = true
    @element_klass = element_klass
  end
end
