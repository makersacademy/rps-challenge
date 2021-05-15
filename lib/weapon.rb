# frozen_string_literal: true

# the Weapon class is responsible for newing up weapons which can tell whether they beat another weapon instance
require_relative 'game'

  
class Weapon
  attr_reader :type
  
  RULES = { 
    rock: :scissors, 
    paper: :rock, 
    scissors: :paper 
  }

  def initialize(type)
    @type = type.to_sym
  end

  def beats?(other)
    (RULES[type]) == other.type
  end
end
