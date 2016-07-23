class TheInternet

  attr_reader :internet_choice

  def initialize
    @options = ["rock", "paper", "scissors"]
    @internet_choice = @options.sample
  end

end
