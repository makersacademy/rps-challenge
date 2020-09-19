
class Game

  attr_reader :options
  DEFAULT_OPTIONS = [ :rock, :paper, :scissors ]

  def initialize(options = DEFAULT_OPTIONS)
    @options = options
  end

  def print
    options.map do |element|
      "#{element.to_s.capitalize}"
    end.join(", ")
  end

end