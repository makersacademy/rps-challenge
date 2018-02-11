class Player
  attr_reader :name, :choice, :options

  def initialize(name)
    @name = name
    @choice = ""
    @options = ['Rock', 'Paper', 'Scissors', 'Lizard', 'Spock']
  end

  def choose_option(option)
    option_check(option)

    @choice = option
  end

  private

  def option_check(option)
    raise "Invalid option" unless @options.include?(option)
  end
end
