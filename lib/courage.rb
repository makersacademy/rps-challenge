require 'csv'

class Courage

  attr_reader :codex

  def initialize(csv)
    @csv = csv
    codex = []
    CSV.foreach (csv) { |entry| codex << csv }
  end

end
