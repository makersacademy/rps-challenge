class Game

  attr_reader :options

  def initialize(options = [ :rock, :paper, :scissors ])
    @options = options
  end

  def print
    options.map do |element|
      "#{element.capitalize}"
    end.join(", ")
  end
end