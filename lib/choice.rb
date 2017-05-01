class Choice

  OPTIONS = { 1 => 'rock',
              2 => 'paper',
              3 => 'scissors' }

  attr_reader :options
  def initialize(options = OPTIONS)
    @options = options
  end

end
