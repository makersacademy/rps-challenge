class Player
  attr_reader :name, :weapon, :options

  def initialize(name)
    @name = name
    @weapon = ""
    @options = ['Rock', 'Paper', 'Scissors', 'Lizard', 'Spock']
  end

  def choose_option(option)
    option_check(option)

    @weapon = option
  end

  private

  def option_check(option)
    raise "Invalid option" unless @options.include?(option)
  end
end
