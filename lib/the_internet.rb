require_relative 'weapons'

class TheInternet

  include Weapons

  attr_reader :internet_choice

  def initialize
    @internet_choice = WEAPONS.sample
  end

end
