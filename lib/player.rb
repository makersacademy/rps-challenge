class Player
  attr_reader :name, :browser, :choose
  alias_method :choice, :choose

  def initialize(name, browser)
    @name = name
    @browser = browser
  end

  def chosen?
    !@choice.nil?
  end

  def choose choice
    @choice = choice
  end
end
