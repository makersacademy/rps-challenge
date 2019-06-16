class User
  attr_reader :name, :input #:score

  def initialize(name)
    @name = name
    # @score = 10
  end

  def get_input(selection)
    @input = selection
  end

  # def loose
  #   @score -= 1
  # end
end
