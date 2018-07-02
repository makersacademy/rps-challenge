class Move

attr_reader :options, :choice

  def initialize(choice)
    @options = ["rock","scissors","paper"]
    @choice = choice
  end

  def valid?
    @options.include?(@choice)
  end

end
