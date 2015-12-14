require 'forwardable'
require_relative './element.rb'

class Player
  extend Forwardable
  def_delegator :element, :type, :element_type

  attr_reader :name, :computer, :element
  alias_method :is_computer?, :computer

  def initialize(name, element_klass = Element)
    @name = name
    @computer = false
    @element_klass = element_klass
  end

  def assign_element(type = nil)
    @element = element_klass.new type
    "#{name} chose #{element.type}"
  end

  def reset
    @element = nil
  end

  private

  attr_reader :element_klass
end
