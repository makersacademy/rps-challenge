require 'csv'

class Courage

  attr_reader :codex

  def initialize(file_goes_here)
    @csv = file_goes_here
    @codex = []
    @size = (CSV.open(@csv, "r") { |file| file.readlines.size }) - 1
    CSV.foreach (@csv) { |entry| @codex << entry }
  end

  def random
    @codex[rand(0..@size)]
  end

end
