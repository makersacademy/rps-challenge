class Player
  attr_reader :name, :browser
  attr_writer :choice

  def initialize(options)
    @name = options.fetch(:name)
    @browser = options.fetch(:browser)
  end

  def chosen?
    true if @choice != nil
  end

  def choose move
    @choice = move
  end
end
