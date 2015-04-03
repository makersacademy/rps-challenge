class Player
  attr_reader :name, :browser

  def initialize(options)
    @name = options.fetch(:name)
    @browser = options.fetch(:browser)
  end
end
