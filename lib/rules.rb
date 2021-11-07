# will contain an array of arrays for the rules of Rock, Paper, Scissors
require_relative 'element'
class Rules

  DEFAULT_ELEMENTS = [
    Element.new("Rock", "Scissors", "Paper", "Rock"),
    Element.new("Paper", "Rock","Scissors", "Paper"),
    Element.new("Scissors", "Paper", "Rock", "Scissors")
  ].freeze

  attr_reader :elements

  def initialize(elements = DEFAULT_ELEMENTS)
    @elements = elements
  end
end
